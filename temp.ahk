temp1() ; want to commit once before deleting for history
{
  ; else if (type == "type")
  d()
  xl(2)
  x(2)
  loop, 2
  {
    d()
    xl()
    x(2)
  }
  d()
  loop, 3
  {
  ; else if (path == x)
    xl(3)
    x(3)
    loop, 3
    {
      d()
      xl()
      x(3)
    }
    d()
    xl()
  }
  xl()
}

temp2() ; want to commit once before deleting for history
{
  d()
  sl(3)
  mld(12)
  u(12)
  loop, 3
  {
    mld(3)
    u()
    mlu(2)
    d()
    mld()
    d(2)
  }
  d(3)
}

d(loop=1) ; down
{
  loop, %loop%
    send {down}
}

xl(loop=1) ; delete line
{
  loop, %loop%
  {
    send +{down}
    send {delete}
  }
}

x(loop=1) ; delete
{
  loop, %loop%
    send {delete}
}

sl(loop=1) ; select line
{
  loop, %loop%
    send +{down}
}

mld(loop=1) ; move line down
{
  loop, %loop%
    send ^{down}
}

u(loop=1) ; up
{
  loop, %loop%
    send {up}
}

mlu(loop=1) ; move line up
{
  loop, %loop%
    send ^{up}
}

cgd(loop=1) ; cursor grow down
{
  loop, %loop%
    send ^!{down}
}

pu(loop=1) ; page up
{
  loop, %loop%
    send {pgup}
}

pd(loop=1) ; page down
{
  loop, %loop%
    send {pgdn}
}

!space::
cgd(14)
send +{end}
send ^x
sleep, 1000
pu(8)
return

#space::
cgd(14)
send {space}
send ^v
sleep, 1000
pd(8)
return

^space::
  reload
  return
