$(function(){

  function buildPost(post){
    var post = `<tr class="hover">
                  <td class="num">
                    ${post.date}
                  </td>
                  <td class="num">
                    ${post.category_name}
                  </td>
                  <td class="num">
                    ${post.p_price}
                  </td>
                  <td>
                    <div class="table_position">
                      <div class="table_content">
                      ${post.memo}
                      </div>
                      <br>
                      <div class="table_icon">
                        <a class="deco_none icon" href="/posts/7/edit"><i class="fas fa-edit"></i>
                        </a>
                        <a class="deco_none icon" rel="nofollow" data-method="delete" href="/posts/7"><i class="fas fa-trash"></i>
                        </a>
                      </div>
                    </div>
                  </td>
                </tr>`
    return post;
  }


  function buildTable(new_table, sum){
    var html = `<table>
                  <tbody>
                    <tr>
                      <th>
                        date
                      </th>
                      <th>
                        category
                      </th>
                      <th>
                        price
                      </th>
                      <th>
                        memo
                      </th>
                    </tr>
                    ${new_table}

                    <tr>
                      <th colspan="2">
                        合計金額
                      </th>
                      <th class="num">
                        ${sum}
                      </th>
                      <th>
                      </th>
                    </tr>

                  </tbody>
                </table>`
    return html;
  };


  $(".search-form").on("submit",function(e) {
    console.log("発火")
    e.preventDefault()
    var search_date = $("#start_at").val()
    var tag_id = $(".submit-btn").data("id")
  
    console.log(search_date)
    console.log(tag_id)

    $.ajax({
      type: "GET",
      // url:  "/tags/", //indexアクションへのパス
      url:  "/tags/" + tag_id,
      data: {start_at: search_date},
      dataType: "json"
    })
    
    .done(function(posts){
      //上記のpostsは、コントローラ/jbuilderを通して作成したデータ（検索結果）

      $(".submit-btn").prop('disabled', false); //submitボタンを何度も押せる様にする
      $("table").remove(); //元ののテーブルを削除

      //検索結果を表示させるため、postsを用いて、テーブルの列を作成
      var new_table = "";
      posts.forEach(function(post){
        new_table += buildPost(post);
      })

      //posts配列のp_priceの合計値を計算
      var sum = 0
      posts.forEach(function(post){
        sum += post.p_price
      })
    
    $(".table").append(buildTable(new_table, sum))
    })

    .fail(function(){
      $(".submit-btn").prop('disabled', false);
      console.log("fail")
    })
  });
  
})