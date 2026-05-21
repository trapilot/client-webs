import requests

from re import split
from django.contrib import messages, auth
from django.contrib.auth.decorators import login_required
from django.contrib.auth.tokens import default_token_generator
from django.contrib.sites.shortcuts import get_current_site
from django.core.mail import EmailMessage
from django.core.exceptions import ObjectDoesNotExist
from django.core.paginator import Paginator
from django.db.models import Q
from django.http import JsonResponse
from django.shortcuts import get_object_or_404, redirect, render
from django.template.loader import render_to_string
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.utils.encoding import force_bytes

# from shop_engine.forms import RegistrationForm
from shop_engine.models import (
    Product,
    Variation,
    Category,
 )


def home(request):
    products = Product.objects.all().filter(is_active=True)
    context = {
        'products': products,
    }
    return context
    return render(request, 'home.html', context=context)
    

# def register(request):
    # if request.method == 'POST':
        # form = RegistrationForm(request.POST)
        # if form.is_valid():
            # first_name = form.cleaned_data['first_name']
            # last_name = form.cleaned_data['last_name']
            # email = form.cleaned_data['email']
            # phone_number = form.cleaned_data['phone_number']
            # password = form.cleaned_data['password']
            # username = email.split('@')[0]

            # user = Account.objects.create_user(
                # first_name=first_name, last_name=last_name, email=email, username=username, password=password)
            # user.phone_number = phone_number
            # user.save()

            # try:
                # current_site = get_current_site(request=request)
                # print(current_site.domain)
                # mail_subject = 'Activate your blog account.'
                # message = render_to_string('accounts/active_email.html', {
                    # 'user': user,
                    # 'domain': current_site.domain,
                    # 'uid': urlsafe_base64_encode(force_bytes(user.pk)),
                    # 'token': default_token_generator.make_token(user)
                # })
                # send_email = EmailMessage(mail_subject, message, to=[email])
                # send_email.send()
                # messages.success(
                    # request=request,
                    # message="Please confirm your email address to complete the registration"
                # )
            # except:
                # pass
            # return redirect('shop_register')
        # else:
            # messages.error(request=request, message="Register failed!")
    # else:
        # form = RegistrationForm()
    # context = {
        # 'form': form,
    # }
    # return render(request, 'accounts/register.html', context)


# def login(request):
    # if request.method == "POST":
        # email = request.POST.get('email')
        # password = request.POST.get('password')
        # user = auth.authenticate(email=email, password=password)
        # if user is not None:
            # try:
                # cart = Cart.objects.get(cart_id=_cart_id(request))
                # cart_items = CartItem.objects.filter(cart=cart)
                # if cart_items.exists():
                    # product_variation = []
                    # for cart_item in cart_items:
                        # variations = cart_item.variations.all()
                        # product_variation.append(list(variations))
                        # cart_item.user = user
                        # cart_item.save()
                    # cart_items = CartItem.objects.filter(user=user)
                    # existing_variation_list = [list(item.variations.all()) for item in cart_items]
                    # id = [item.id for item in cart_items]

                    # for product in product_variation:
                        # if product in existing_variation_list:
                            # index = existing_variation_list.index(product)
                            # item_id = id[index]
                            # item = CartItem.objects.get(id=item_id)
                            # item.quantity += 1
                            # item.user = user
                            # item.save()
                        # else:
                            # cart_items = CartItem.objects.filter(cart=cart)
                            # for item in cart_items:
                                # item.user = user
                                # item.save()
            # except Exception:
                # pass
            # auth.login(request=request, user=user)
            # messages.success(request=request, message="Login successful!")

            # url = request.META.get('HTTP_REFERER')
            # try:
                # query = requests.utils.urlparse(url).query
                # params = dict(x.split("=") for x in query.split("&"))
                # if "next" in params:
                    # next_page = params["next"]
                    # return redirect(next_page)
            # except Exception:
                # return redirect('shop_dashboard')
        # else:
            # messages.error(request=request, message="Login failed!")
    # context = {
        # 'email': email if 'email' in locals() else '',
        # 'password': password if 'password' in locals() else '',
    # }
    # return render(request, 'accounts/login.html', context=context)


# @login_required(login_url="login")
# def logout(request):
    # auth.logout(request)
    # messages.success(request=request, message="You are logged out!")
    # return redirect('shop_login')


# def activate(request, uidb64, token):
    # try:
        # uid = urlsafe_base64_decode(uidb64).decode()
        # user = Account.objects.get(pk=uid)
    # except Exception:
        # user = None

    # if user is not None and default_token_generator.check_token(user, token):
        # user.is_active = True
        # user.save()
        # messages.success(
            # request=request, message="Your account is activated, please login!")
        # return render(request, 'accounts/login.html')
    # else:
        # messages.error(request=request, message="Activation link is invalid!")
        # return redirect('shop_home')


# @login_required(login_url="login")
# def dashboard(request):
    # return render(request, "accounts/dashboard.html")


# def forgotPassword(request):
    # try:
        # if request.method == 'POST':
            # email = request.POST.get('email')
            # user = Account.objects.get(email__exact=email)

            # current_site = get_current_site(request=request)
            # mail_subject = 'Reset your password'
            # message = render_to_string('accounts/reset_password_email.html', {
                # 'user': user,
                # 'domain': current_site.domain,
                # 'uid': urlsafe_base64_encode(force_bytes(user.pk)),
                # 'token': default_token_generator.make_token(user)
            # })
            # send_email = EmailMessage(mail_subject, message, to=[email])
            # send_email.send()

            # messages.success(
                # request=request, message="Password reset email has been sent to your email address")
    # except Exception:
        # messages.error(request=request, message="Account does not exist!")
    # finally:
        # context = {
            # 'email': email if 'email' in locals() else '',
        # }
        # return render(request, "accounts/forgotPassword.html", context=context)


# def reset_password_validate(request, uidb64, token):
    # try:
        # uid = urlsafe_base64_decode(uidb64).decode()
        # user = Account.objects.get(pk=uid)
    # except Exception:
        # user = None

    # if user is not None and default_token_generator.check_token(user, token):
        # request.session['uid'] = uid
        # messages.info(request=request, message='Please reset your password')
        # return redirect('shop_reset_password')
    # else:
        # messages.error(request=request, message="This link has been expired!")
        # return redirect('shop_home')


# def reset_password(request):
    # if request.method == 'POST':
        # password = request.POST.get('password')
        # confirm_password = request.POST.get('confirm_password')

        # if password == confirm_password:
            # uid = request.session.get('uid')
            # user = Account.objects.get(pk=uid)
            # user.set_password(password)
            # user.save()
            # messages.success(request, message="Password reset successful!")
            # return redirect('shop_login')
        # else:
            # messages.error(request, message="Password do not match!")
    # return render(request, 'accounts/reset_password.html')


# def _cart_id(request):
    # cart_id = request.session.session_key
    # if not cart_id:
        # cart_id = request.session.create()
    # return cart_id


# def add_cart(request, product_id):
    # current_user = request.user
    # product = Product.objects.get(id=product_id)    # Get object product
    # if current_user.is_authenticated:
        # product_variations = list()
        # if request.method == 'POST':
            # for item in request.POST:
                # key = item
                # value = request.POST.get(key)
                # try:
                    # variation = Variation.objects.get(product=product, variation_category__iexact=key, variation_value__iexact=value)
                    # product_variations.append(variation)
                # except ObjectDoesNotExist:
                    # pass

        # is_exists_cart_item = CartItem.objects.filter(product=product, user=current_user).exists()
        # if is_exists_cart_item:
            # cart_items = CartItem.objects.filter(
                # product=product,
                # user=current_user
            # )
            # existing_variation_list = [list(item.variations.all()) for item in cart_items]
            # id = [item.id for item in cart_items]
            # if product_variations in existing_variation_list:
                # idex = existing_variation_list.index(product_variations)
                # cart_item = CartItem.objects.get(id=id[idex])
                # cart_item.quantity += 1
            # else:
                # cart_item = CartItem.objects.create(
                    # product=product,
                    # user=current_user,
                    # quantity=1
                # )
        # else:
            # cart_item = CartItem.objects.create(
                # product=product,
                # user=current_user,
                # quantity=1
            # )
        # if len(product_variations) > 0:
            # cart_item.variations.clear()
            # for item in product_variations:
                # cart_item.variations.add(item)
        # cart_item.save()
        # return redirect('shop_cart')
    # else:
        # product_variations = list()
        # if request.method == 'POST':
            # for item in request.POST:
                # key = item
                # value = request.POST.get(key)
                # try:
                    # variation = Variation.objects.get(product=product, variation_category__iexact=key, variation_value__iexact=value)
                    # product_variations.append(variation)
                # except ObjectDoesNotExist:
                    # pass
        # try:
            # cart = Cart.objects.get(cart_id=_cart_id(request=request))  # Get cart using the _cart_id
        # except Cart.DoesNotExist:
            # cart = Cart.objects.create(
                # cart_id=_cart_id(request)
            # )
        # cart.save()

        # is_exists_cart_item = CartItem.objects.filter(product=product, cart=cart).exists()
        # if is_exists_cart_item:
            # cart_items = CartItem.objects.filter(
                # product=product,
                # cart=cart
            # )
            # existing_variation_list = [list(item.variations.all()) for item in cart_items]
            # id = [item.id for item in cart_items]
            # if product_variations in existing_variation_list:
                # idex = existing_variation_list.index(product_variations)
                # cart_item = CartItem.objects.get(id=id[idex])
                # cart_item.quantity += 1
            # else:
                # cart_item = CartItem.objects.create(
                    # product=product,
                    # cart=cart,
                    # quantity=1
                # )
        # else:
            # cart_item = CartItem.objects.create(
                # product=product,
                # cart=cart,
                # quantity=1
            # )
        # if len(product_variations) > 0:
            # cart_item.variations.clear()
            # for item in product_variations:
                # cart_item.variations.add(item)
        # cart_item.save()
        # return redirect('shop_cart')


# def remove_cart(request, product_id, cart_item_id):
    # product = get_object_or_404(Product, id=product_id)
    # try:
        # if request.user.is_authenticated:
            # cart_item = CartItem.objects.get(
                # id=cart_item_id,
                # product=product,
                # user=request.user
            # )
        # else:
            # cart = Cart.objects.get(cart_id=_cart_id(request))
            # cart_item = CartItem.objects.get(
                # id=cart_item_id,
                # product=product,
                # cart=cart
            # )
        # if cart_item.quantity > 1:
            # cart_item.quantity -= 1
            # cart_item.save()
        # else:
            # cart_item.delete()
    # except Exception:
        # pass
    # return redirect('shop_cart')


# def remove_cart_item(request, product_id, cart_item_id):
    # product = get_object_or_404(Product, id=product_id)
    # try:
        # if request.user.is_authenticated:
            # cart_item = CartItem.objects.get(
                # id=cart_item_id,
                # product=product,
                # user=request.user
            # )
        # else:
            # cart = Cart.objects.get(cart_id=_cart_id(request=request))
            # cart_item = CartItem.objects.get(
                # id=cart_item_id,
                # product=product,
                # cart=cart
            # )
        # cart_item.delete()
    # except Exception:
        # pass
    # return redirect('shop_cart')


# def cart(request, total=0, quantity=0, cart_items=None):
    # try:
        # if request.user.is_authenticated:
            # cart_items = CartItem.objects.filter(user=request.user, is_active=True)
        # else:
            # cart = Cart.objects.get(cart_id=_cart_id(request=request))
            # cart_items = CartItem.objects.filter(cart=cart, is_active=True)
        # for cart_item in cart_items:
            # total += cart_item.product.price * cart_item.quantity
            # quantity += cart_item.quantity
        # tax = total * 2 / 100
        # grand_total = total + tax
    # except ObjectDoesNotExist:
        # pass    # Chỉ bỏ qua
    # print(request.user)
    # context = {
        # 'total': total,
        # 'quantity': quantity,
        # 'cart_items': cart_items,
        # 'tax': tax if "tax" in locals() else "",
        # 'grand_total': grand_total if "tax" in locals() else 0,
    # }
    # return render(request, 'store/cart.html', context=context)


# @login_required(login_url='login')
# def checkout(request, total=0, quantity=0, cart_items=None):
    # try:
        # cart = Cart.objects.get(cart_id=_cart_id(request=request))
        # cart_items = CartItem.objects.filter(user=request.user, is_active=True)
        # for cart_item in cart_items:
            # total += cart_item.product.price * cart_item.quantity
            # quantity += cart_item.quantity
        # tax = total * 2 / 100
        # grand_total = total + tax
    # except ObjectDoesNotExist:
        # pass    # Chỉ bỏ qua
    # context = {
        # 'total': total,
        # 'quantity': quantity,
        # 'cart_items': cart_items,
        # 'tax': tax if "tax" in locals() else "",
        # 'grand_total': grand_total,
    # }
    # return render(request, 'store/checkout.html', context=context)
    

# def sendEmail(request, order):
    # mail_subject = 'Thank you for your order!'
    # message = render_to_string('orders/order_recieved_email.html', {
        # 'user': request.user,
        # 'order': order
    # })
    # to_email = request.user.email
    # send_email = EmailMessage(mail_subject, message, to=[to_email])
    # send_email.send()


# def payments(request):
    # try:
        # if request.is_ajax() and request.method == 'POST':
            # data = request.POST
            # order_id = data['orderID']
            # trans_id = data['transID']
            # payment_method = data['payment_method']
            # status = data['status']

            # Lấy bản ghi order
            # order = Order.objects.get(user=request.user, is_ordered=False, order_number=order_id)
            # Tạo 1 bản ghi payment
            # payment = Payment(
                # user=request.user,
                # payment_id=trans_id,
                # payment_method=payment_method,
                # amount_paid=order.order_total,
                # status=status,
            # )
            # payment.save()

            # order.payment = payment
            # order.is_ordered = True
            # order.save()

            # Chuyển hết cart_item thành order_product
            # cart_items = CartItem.objects.filter(user=request.user)
            # for item in cart_items:
                # order_product = OrderProduct()
                # order_product.order_id = order.id
                # order_product.payment = payment
                # order_product.user_id = request.user.id
                # order_product.product_id = item.product_id
                # order_product.quantity = item.quantity
                # order_product.product_price = item.product.price
                # order_product.ordered = True
                # order_product.save()

                # cart_item = CartItem.objects.get(id=item.id)
                # product_variation = cart_item.variations.all()
                # order_product = OrderProduct.objects.get(id=order_product.id)
                # order_product.variations.set(product_variation)
                # order_product.save()

                # Reduce the quantity of the sold products
                # product = Product.objects.get(id=item.product_id)
                # product.stock -= item.quantity
                # product.save()

            # Xóa hết cart_item
            # CartItem.objects.filter(user=request.user).delete()

            # Gửi thư cảm ơn
            # sendEmail(request=request, order=order)

            # Phản hồi lại ajax
            # data = {
                # 'order_number': order.order_number,
                # 'transID': payment.payment_id,
            # }
        # return JsonResponse({"data": data}, status=200)
    # except Exception as e:
        # return JsonResponse({"error": e}, status=400)


# def place_order(request, total=0, quantity=0,):
    # current_user = request.user

    # If the cart count is less than or equal to 0, then redirect back to shop
    # cart_items = CartItem.objects.filter(user=current_user)
    # cart_count = cart_items.count()
    # if cart_count <= 0:
        # return redirect('shop_store')

    # grand_total = 0
    # tax = 0
    # for cart_item in cart_items:
        # total += (cart_item.product.price * cart_item.quantity)
        # quantity += cart_item.quantity
    # tax = (2 * total) / 100
    # grand_total = total + tax

    # if request.method == 'POST':
        # form = OrderForm(request.POST)
        # if form.is_valid():
            # Store all the billing information inside Order table
            # data = Order()
            # data.user = current_user
            # data.first_name = form.cleaned_data['first_name']
            # data.last_name = form.cleaned_data['last_name']
            # data.phone = form.cleaned_data['phone']
            # data.email = form.cleaned_data['email']
            # data.address_line_1 = form.cleaned_data['address_line_1']
            # data.address_line_2 = form.cleaned_data['address_line_2']
            # data.country = form.cleaned_data['country']
            # data.state = form.cleaned_data['state']
            # data.city = form.cleaned_data['city']
            # data.order_note = form.cleaned_data['order_note']
            # data.order_total = grand_total
            # data.tax = tax
            # data.ip = request.META.get('REMOTE_ADDR')
            # data.save()
            # Generate order number
            # yr = int(datetime.date.today().strftime('%Y'))
            # dt = int(datetime.date.today().strftime('%d'))
            # mt = int(datetime.date.today().strftime('%m'))
            # d = datetime.date(yr, mt, dt)
            # current_date = d.strftime("%Y%m%d")     # 20210305
            # order_number = current_date + str(data.id)
            # data.order_number = order_number
            # data.save()

            # order = Order.objects.get(user=current_user, is_ordered=False, order_number=order_number)
            # context = {
                # 'order': order,
                # 'cart_items': cart_items,
                # 'total': total,
                # 'tax': tax,
                # 'grand_total': grand_total,
            # }
            # return render(request, 'orders/payments.html', context)
    # else:
        # return redirect('shop_checkout')


# def order_complete(request):
    # order_number = request.GET.get('order_number')
    # transID = request.GET.get('payment_id')

    # try:
        # order = Order.objects.get(order_number=order_number, is_ordered=True)
        # ordered_products = OrderProduct.objects.filter(order_id=order.id)

        # subtotal = 0
        # for i in ordered_products:
            # subtotal += i.product_price * i.quantity

        # payment = Payment.objects.get(payment_id=transID)

        # context = {
            # 'order': order,
            # 'ordered_products': ordered_products,
            # 'order_number': order.order_number,
            # 'transID': payment.payment_id,
            # 'payment': payment,
            # 'subtotal': subtotal,
        # }
        # return render(request, 'orders/order_complete.html', context)
    # except Exception:
        # return redirect('shop_home')
        

# def store(request, category_slug=None):
    # if category_slug is not None:
        # categories = get_object_or_404(Category, slug=category_slug)
        # products = Product.objects.all().filter(category=categories, is_available=True)
    # else:
        # products = Product.objects.all().filter(is_available=True).order_by('id')

    # page = request.GET.get('page')
    # page = page or 1
    # paginator = Paginator(products, 3)
    # paged_products = paginator.get_page(page)
    # product_count = products.count()

    # context = {
        # 'products': paged_products,
        # 'product_count': product_count,
    # }
    # return render(request, 'store/store.html', context=context)


# def product_detail(request, category_slug, product_slug=None):
    # try:
        # single_product = Product.objects.get(category__slug=category_slug, slug=product_slug)
        # cart = Cart.objects.get(cart_id=_cart_id(request=request))
        # in_cart = CartItem.objects.filter(
            # cart=cart,
            # product=single_product
        # ).exists()
    # except Exception as e:
        # cart = Cart.objects.create(
            # cart_id=_cart_id(request)
        # )

    # try:
        # orderproduct = OrderProduct.objects.filter(user=request.user, product_id=single_product.id).exists()
    # except Exception:
        # orderproduct = None

    # reviews = ReviewRating.objects.filter(product_id=single_product.id, status=True)

    # context = {
        # 'single_product': single_product,
        # 'in_cart': in_cart if 'in_cart' in locals() else False,
        # 'orderproduct': orderproduct,
        # 'reviews': reviews,
    # }
    # return render(request, 'store/product_detail.html', context=context)


# def search(request):
    # if 'q' in request.GET:
        # q = request.GET.get('q')
        # products = Product.objects.order_by('-created_date').filter(Q(product_name__icontains=q) | Q(description__icontains=q))
        # product_count = products.count()
    # context = {
        # 'products': products,
        # 'q': q,
        # 'product_count': product_count
    # }
    # return render(request, 'store/store.html', context=context)


# def submit_review(request, product_id):
    # url = request.META.get('HTTP_REFERER')
    # if request.method == "POST":
        # try:
            # review = ReviewRating.objects.get(user__id=request.user.id, product__id=product_id)
            # form = ReviewForm(request.POST, instance=review)
            # form.save()
            # messages.success(request, "Thank you! Your review has been updated.")
            # return redirect(url)
        # except Exception:
            # form = ReviewForm(request.POST)
            # if form.is_valid():
                # data = ReviewRating()
                # data.subject = form.cleaned_data['subject']
                # data.rating = form.cleaned_data['rating']
                # data.review = form.cleaned_data['review']
                # data.ip = request.META.get('REMOTE_ADDR')
                # data.product_id = product_id
                # data.user_id = request.user.id
                # data.save()
                # messages.success(request, "Thank you! Your review has been submitted.")
                # return redirect(url)