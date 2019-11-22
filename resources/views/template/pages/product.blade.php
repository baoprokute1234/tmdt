@extends('template.master')
@section('content')
<div class="container">
	<div id="content">
		<div class="row">
			<div class="col-sm-12">
				<div class="row">
					<div class="col-sm-4">
						<img src="{{url('assets/dest/products/' . $product->image .'')}}" alt="">
					</div>
					<div class="col-sm-8">

						
						<div class="single-item-body">
							<p class="single-item-title">{{mb_strtoupper($product->name)}}</p>
							<p class="single-item-price">
								<span class="flash-sale">{{number_format($product->price,0,',','.')}} đ</span>
							</p>
							<?php
								$averageRating = 0;
								if($product->numStar != 0){
									$averageRating = ($product->numStar)/($product->numRate);
								}
							?>
							<p ><input class="rating rating-loading" data-min="0" data-max="5" data-step="0.1" value={{$averageRating}} data-size="xs" disabled=""></p> 
							<p >Số lượt đánh giá: {{$product->numRate}}</p>
							
						</div>

						<div class="clearfix"></div>
						<div class="space20">&nbsp;</div>
						<div class="single-item-desc">
								<p>Số điện thoại đặt hàng trực tiếp: <a style="color: yellow">{{$seller->phone}}</a></p>
								

						</div>
						<div class="space20">&nbsp;</div>
						@if (count($errors)>0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{$error}}</li>
                                    @endforeach
                                </ul>
                            </div> 
                        @endif
						<p>Số lượng:</p>
						<div class="single-item-options">
							<form action="{{route('order.postAddToCart')}}" method="post">
								<!-- <select class="wc-select" name="quantity" style="color: #000">
									
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select> -->

								<input class="wc-select" name="quantity" style="color: #000" type="number">
								<input type="hidden" name="pid" value="{{$product->id}}">
								<input type="hidden" name="_token" value="{{csrf_token()}}">
								<input type="submit" class="add-to-cart" value="Add">								
							</form>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>

				<div class="space40">&nbsp;</div>
				<div class="woocommerce-tabs">
					<ul class="tabs">
						<li><a href="#tab-description">Mô tả</a></li>
						<li><a href="#tab-reviews">Đánh giá</a></li>
						<li> <a href="#tab-rating">Xếp hạng</a></li>
					</ul>
					<div class="panel" id="tab-rating">
						<form action="{{route('products.postRating',$product->id)}}" method="POST" >
							<input type="hidden" id="input-1" name="rate" class="rating rating-loading" data-min="0" data-max="5" data-step="1" >
							<input type="hidden" name="pid" value="{{$product->id}}">
							<input type="hidden" name="_token" value="{{csrf_token()}}">
							<input type="submit" class="add-to-cart" value="Rate">
						</form>
					</div>
					<div class="panel comment" id="tab-description">
						<input type="hidden" id="xxx" value="{{$product->description}}">
							<?php
								echo htmlspecialchars_decode($product->description);
							?>
						
					</div>
					<div class="panel" id="tab-reviews">
						<script type="text/javascript">
							var i = 0;
						</script>
						<?php $i = 0; ?>
						@foreach ($comments as $comment)
							<?php 
								$user = DB::table('users')->where('id',$comment->userID)->first();
							?>
							<div class="row">
								<label style="color: blue"><a href="#">{{$user->name}} :</a></label>
								
								<div id="{{$i}}" class="comment"></div>
							</div>
							<input type="hidden" id="ip{{$i}}" value="{{$comment->content}}">
							<?php $i++; ?>
							<script type="text/javascript">

								var a = document.getElementById("ip" +i).value;
								console.log(i);
								document.getElementById(""+i+"").innerHTML = a;
								i+=1;
							</script>
							<hr>
						@endforeach
						
						<form action="{{route('product.postComment')}}" method="post">
							<textarea class="ckeditor" id="summary-ckeditor" name="comment" style="color: black"></textarea>
							<script src="{{ asset('vendor/unisharp/laravel-ckeditor/ckeditor.js') }}"></script>
							<script>
								CKEDITOR.replace('summary-ckeditor');
							</script>
							<input type="hidden" name="pid" value="{{$product->id}}">
							<input type="hidden" name="_token" value="{{csrf_token()}}">
							<input type="submit" class="btn btn-success" value="Comment">
						</form>
					</div>
				</div>
				<div class="space50">&nbsp;</div>


<!-- 				<script type="text/javascript">
					var i = 0;
				</script>
				<?php $i = 0; ?>
				@foreach ($comments as $comment)
					<div id="{{$i}}">{{$comment->content}}</div>
					<input type="hidden" id="ip{{$i}}" value="{{$comment->content}}">
					<?php $i++; ?>
					<script type="text/javascript">

						var a = document.getElementById("ip" +i).value;
						console.log(i);
						document.getElementById(""+i+"").innerHTML = a;
						i+=1;
					</script>
				@endforeach -->


				<div class="beta-products-list">
					<h4>Related Products</h4>

					<?php $i=0?>
							@for( ; $i < count($relatedPd) ;)
							@if ($i % 3 == 0)
							<div class="row">

								@for($j=0 ; $j<3; $j++)
								@if($i < count($relatedPd))
								<div class="col-sm-4">
									<div class="single-item">
										<div class="single-item-header">
											<a href="{{route('products.getProduct',$relatedPd[$i]->id)}}"><img src="{{url('assets/dest/products/' . $relatedPd[$i]->image .'')}}" alt="" margin-top="10px"></a>
										</div>
										<div class="single-item-body"> 
											<p class="single-item-title">{{mb_strtoupper($relatedPd[$i]->name)}}</b></p>
											<p class="single-item-price">
												<span class='flash-sale'>{{number_format($relatedPd[$i]->price,0,',','.')}} đ</span>
											</p>
										</div>
										<div class="single-item-caption">
											<a class="add-to-cart pull-left" href="shopping_cart.html"><i class="fa fa-shopping-cart"></i></a>
											<a class="beta-btn primary" href="product.html">Details <i class="fa fa-chevron-right"></i></a>
											<div class="clearfix"></div>
										</div>
								</div>
							</div>
							<?php $i++?>
								@endif
								@endfor
						</div>
						<div class="space60">&nbsp;</div>
						@endif
						@endfor
				</div> <!-- .beta-products-list -->
			</div>
		</div>
	</div> <!-- #content -->
</div> <!-- .container -->
@endsection