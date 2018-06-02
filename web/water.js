/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    setInterval(function() {
       
            var result = Math.random()*100;
        $('#water_level').animate( {'margin-top' : (200-result*2)+'px' } );
        //});
    },2000); 
});