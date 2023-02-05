:if ([/ip cloud get update-time]=true) do={/ip cloud set update-time=no}
:if ([/system ntp client get enabled]=false) do={
  /system ntp client set enabled=yes
  /system ntp client set primary-ntp=[:resolve ntp1.vniiftri.ru]
  /system ntp client set secondary-ntp=[:resolve ntp1.stratum1.ru]
}
