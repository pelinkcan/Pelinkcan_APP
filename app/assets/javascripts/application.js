// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery3
//= require popper
//= require bootstrap-sprockets

//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

  // まずカラーピッカーの要素をcolorpickerという変数に入れる
  const colorpicker = document.querySelector('.arrow-icon-color-selector');

  // 次に、ピンの要素をarrowiconという変数に入れる
  const arrowicon = document.getElementById('arrow-icon');

  colorpicker.addEventListener('input', function(e) {  // カラーピッカーの入力値(inputの値)が変更されたら{}内の処理を実行する
    arrowicon.style.color = e.target.value; // アイコンのCSSのcolorプロパティの値を右辺の値にする。右辺の値とはすなわち、カラーピッカーでの選択値である。
 });
 
 
 
 var infoAry = [
"本サイトのトップページです。"
];

function mOver(num,obj) {
    document.getElementById(obj).innerHTML = infoAry[num];	
    document.getElementById(obj).style.visibility = "visible";
}

function mOut(obj) {
    document.getElementById(obj).style.visibility = "hidden";
}