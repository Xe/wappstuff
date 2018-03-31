source env.tcl
source require.tcl
source wing.tcl

package require wapp

proc wapp-default {} {
    set B [wapp-param BASE_URL]
    wingcss

    wapp-trim {
        <section class="container">
          <h1>Hello, World!</h1>
          <p>See the <a href='%html($B)/env'>Wapp
          Environment</a></p>
          <p>Broccoli: <img src='broccoli.gif'></p>
        </section>
    }
}

wapp-start $::argv
