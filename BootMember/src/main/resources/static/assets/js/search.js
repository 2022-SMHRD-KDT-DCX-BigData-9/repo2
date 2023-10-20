// 검색 버튼 클릭시 
$("#searchBtn").on("click", boardSearch);

function boardSearch() {
	$.ajax({
		url: "search",
		type: "get",
		data: {
			"search": $("#search").val()
		},
		success: result
	})
};

// body부분에 추가하기
function result(res) {
	const tbody = $("tbody");

	tbody.html("");

	for (var i = 0; i < res.length; i++) {
		let BoardInfo = res[i];
		
		var tr = `
			<tr>
				<td>${BoardInfo.board_idx}</td>
				<td><a href="detail?idx=${BoardInfo.board_idx}">${BoardInfo.item_name}</a></td>
				<td>${BoardInfo.item_category}</td>
				<td>${BoardInfo.item_img}</td>
				<td>${BoardInfo.board_views}</td>
				<td>${BoardInfo.created_at}</td>
				<td><a href="delete?idx=${BoardInfo.board_idx}">삭제</a></td>
			</tr>
		`;
		tbody.append(tr);
	};
};