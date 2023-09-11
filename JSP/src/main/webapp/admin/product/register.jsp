<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./../_header.jsp" %>
<main>
    <aside>
        <!-- Global Navigation Bar -->
        <ul id="gnb">
            <li>
                <a href="#"><i class="fa fa-cogs" aria-hidden="true"></i>환경설정</a>
                <ol>
                    <li><a href="#">기본환경설정</a></li>
                    <li><a href="#">배너관리</a></li>
                </ol>
            </li>
            <li>
                <a href="#"><i class="fas fa-store" aria-hidden="true"></i>상점관리</a>
                <ol>
                    <li><a href="#">판매자현황</a></li>
                    <li><a href="#">재고관리</a></li>
                </ol>
            </li>
            <li>
                <a href="#"><i class="fa fa-users" aria-hidden="true"></i>회원관리</a>
                <ol>
                    <li><a href="#">회원현황</a></li>
                    <li><a href="#">포인트관리</a></li>
                    <li><a href="#">비회원관리</a></li>
                    <li><a href="#">접속자집계</a></li>
                </ol>
            </li>
            <li>
                <a href="#"><i class="fas fa-box-open" aria-hidden="true"></i>상품관리</a>
                <ol>
                    <li><a href="#">상품현황</a></li>
                    <li><a href="#">상품등록</a></li>
                    <li><a href="#">재고관리</a></li>
                </ol>
            </li>
            <li>
                <a href="#"><i class="fa fa-credit-card" aria-hidden="true"></i>주문관리</a>
                <ol>
                    <li><a href="#">주문현황</a></li>
                    <li><a href="#">매출현황</a></li>
                    <li><a href="#">결제관리</a></li>
                    <li><a href="#">배송관리</a></li>
                </ol>
            </li>
            <li>
                <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>게시판관리</a>
                <ol>
                    <li><a href="#">게시판현황</a></li>
                    <li><a href="#">고객문의</a></li>
                </ol>
            </li>
        </ul>
    </aside>
    <section id="admin-product-register">
        <nav>
            <h3>상품등록</h3>
            <p>
                HOME > 상품관리 > <strong>상품등록</strong>
            </p>
        </nav>
        <!-- 상품등록 컨텐츠 시작 -->
        <article>
            <form action="#">

                <!-- 상품분류 -->
                <section>
                    <h4>상품분류</h4>
                    <p>
                        기본분류는 반드시 선택하셔야 합니다. 하나의 상품에 1개의 분류를 지정 합니다.
                    </p>
                    <table>
                        <tr>
                            <td>1차 분류</td>
                            <td>
                                <select name="category1">
                                    <option value="cate0">1차 분류 선택</option>
                                    <option value="cate11">패션·의류·뷰티</option>
                                    <option value="cate12">가전·디지털</option>
                                    <option value="cate13">식품·생필품</option>
                                    <option value="cate14">홈·문구·취미</option>                                                
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>2차 분류</td>
                            <td>
                                <select name="category2">
                                    <option value="cate0">2차 분류 선택</option>
                                    <option value="cate21">남성의류</option>
                                    <option value="cate22">여성의류</option>
                                    <option value="cate23">잡화</option>
                                    <option value="cate24">뷰티</option>                                                
                                </select>
                            </td>
                        </tr>
                    </table>
                </section>

                <!-- 기본정보 -->
                <section>
                    <h4>기본정보</h4>
                    <p>
                        기본정보는 반드시 입력해야 합니다.
                    </p>
                    <table>
                        <tr>
                            <td>상품명</td>
                            <td><input type="text" name="#"/></td>
                        </tr>
                        <tr>
                            <td>기본설명</td>
                            <td>
                                <span>상품명 하단에 상품에 대한 추가적인 설명이 필요한 경우에 입력</span>
                                <input type="text" name="#"/>
                            </td>
                        </tr>
                        <tr>
                            <td>제조사</td>
                            <td><input type="text" name="#"/></td>
                        </tr>
                        <tr>
                            <td>판매가격</td>
                            <td><input type="text" name="#"/>원</td>
                        </tr>                                    
                        <tr>
                            <td>할인율</td>
                            <td>
                                <span>0을 입력하면 할인율 없음</span>
                                <input type="text" name="#"/>원
                            </td>
                        </tr>
                        <tr>
                            <td>포인트</td>
                            <td>
                                <span>0을 입력하면 포인트 없음</span>
                                <input type="text" name="#"/>점
                            </td>
                        </tr>
                        <tr>
                            <td>재고수량</td>
                            <td><input type="text" name="#"/>개</td>
                        </tr>
                        <tr>
                            <td>배송비</td>
                            <td>
                                <span>0을 입력하면 배송비 무료</span>
                                <input type="text" name="#"/>원
                            </td>
                        </tr>
                        <tr>
                            <td>상품 썸네일</td>
                            <td>
                                <span>크기 190 x 190, 상품 목록에 출력될 이미지 입니다. </span>
                                <input type="file" name="#"/>

                                <span>크기 230 x 230, 상품 메인에 출력될 이미지 입니다. </span>
                                <input type="file" name="#"/>

                                <span>크기 456 x 456, 상품 상세에 출력될 이미지 입니다. </span>
                                <input type="file" name="#"/>
                            </td>
                        </tr>
                        <tr>
                            <td>상세 상품정보</td>
                            <td>
                                <span>크기 가로 940px 높이 제약없음, 크기 최대 1MB, 상세페이지 상품정보에 출력될 이미지 입니다.</span>
                                <input type="file" name="#"/>
                            </td>
                        </tr>
                    </table>                                
                </section>

                <!-- 상품정보 제공 고시 -->
                <section>
                    <h4>상품정보 제공고시</h4>
                    <p>
                        [전자상거래에 관한 상품정보 제공에 관한 고시] 항목에 의거 등록해야 되는 정보입니다.
                    </p>
                    <table>
                        <tr>
                            <td>상품상태</td>
                            <td><input type="text" name="" value="새상품"/></td>
                        </tr>
                        <tr>
                            <td>부가세 면세여부</td>
                            <td><input type="text" name="" value="과세상품"/></td>
                        </tr>
                        <tr>
                            <td>영수증발행</td>
                            <td><input type="text" name="" value="발행가능 - 신용카드 전표, 온라인 현금영수증"/></td>
                        </tr>
                        <tr>
                            <td>사업자구분</td>
                            <td><input type="text" name="" value="사업자 판매자"/></td>
                        </tr>                                
                        <tr>
                            <td>원산지</td>
                            <td><input type="text" name="" value="국내산"/></td>
                        </tr>                                
                    </table>                                
                </section>
                
                <input type="submit" value="등록하기"/>
            </form>
        </article>

        <p class="ico alert">
            <strong>Warning!</strong>
            전자상거래 등에서의 상품 등의 정보제공에 관한 고시에 따라 총 35개 상품군에 대해 상품 특성 등을 양식에 따라 입력할 수 있습니다.
        </p>
        <!-- 상품등록 컨텐츠 끝 -->
    </section>
</main>
<%@ include file="./../_footer.jsp" %>
