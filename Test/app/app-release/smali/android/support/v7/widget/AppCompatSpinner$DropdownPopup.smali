.class Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
.super Landroid/support/v7/widget/ListPopupWindow;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field private final mVisibleRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v7/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 701
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    .line 702
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 699
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    .line 704
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 705
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setModal(Z)V

    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setPromptPosition(I)V

    .line 708
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;-><init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;Landroid/support/v7/widget/AppCompatSpinner;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 719
    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 696
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 696
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isVisibleToUser(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$701(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 696
    invoke-super {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    return-void
.end method

.method private isVisibleToUser(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 827
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method computeContentWidth()V
    .locals 10

    .prologue
    .line 737
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 738
    .local v0, background:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 739
    .local v3, hOffset:I
    if-eqz v0, :cond_2

    .line 740
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v7}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 741
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v7}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v7}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 747
    :goto_0
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v7}, Landroid/support/v7/widget/AppCompatSpinner;->getPaddingLeft()I

    move-result v4

    .line 748
    .local v4, spinnerPaddingLeft:I
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v7}, Landroid/support/v7/widget/AppCompatSpinner;->getPaddingRight()I

    move-result v5

    .line 749
    .local v5, spinnerPaddingRight:I
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v7}, Landroid/support/v7/widget/AppCompatSpinner;->getWidth()I

    move-result v6

    .line 750
    .local v6, spinnerWidth:I
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v7}, Landroid/support/v7/widget/AppCompatSpinner;->access$400(Landroid/support/v7/widget/AppCompatSpinner;)I

    move-result v7

    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    .line 751
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v7, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v8, v7, v9}, Landroid/support/v7/widget/AppCompatSpinner;->access$500(Landroid/support/v7/widget/AppCompatSpinner;Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 753
    .local v1, contentWidth:I
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v7}, Landroid/support/v7/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v8}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v8}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, v7, v8

    .line 755
    .local v2, contentWidthLimit:I
    if-le v1, v2, :cond_0

    .line 756
    move v1, v2

    .line 758
    :cond_0
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    .line 765
    .end local v1           #contentWidth:I
    .end local v2           #contentWidthLimit:I
    :goto_1
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v7}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 766
    sub-int v7, v6, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 770
    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 771
    return-void

    .line 741
    .end local v4           #spinnerPaddingLeft:I
    .end local v5           #spinnerPaddingRight:I
    .end local v6           #spinnerWidth:I
    :cond_1
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v7}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v3, v7

    goto :goto_0

    .line 744
    :cond_2
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v7}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v8}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x0

    iput v9, v8, Landroid/graphics/Rect;->right:I

    iput v9, v7, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 760
    .restart local v4       #spinnerPaddingLeft:I
    .restart local v5       #spinnerPaddingRight:I
    .restart local v6       #spinnerWidth:I
    :cond_3
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v7}, Landroid/support/v7/widget/AppCompatSpinner;->access$400(Landroid/support/v7/widget/AppCompatSpinner;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 761
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 763
    :cond_4
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v7}, Landroid/support/v7/widget/AppCompatSpinner;->access$400(Landroid/support/v7/widget/AppCompatSpinner;)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 768
    :cond_5
    add-int/2addr v3, v4

    goto :goto_2
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 723
    invoke-super {p0, p1}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 724
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 725
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "hintText"

    .prologue
    .line 733
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 734
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 774
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v3

    .line 776
    .local v3, wasShowing:Z
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->computeContentWidth()V

    .line 778
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setInputMethodMode(I)V

    .line 779
    invoke-super {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 780
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 781
    .local v1, listView:Landroid/widget/ListView;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 782
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setSelection(I)V

    .line 784
    if-eqz v3, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 794
    .local v2, vto:Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    .line 795
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;-><init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V

    .line 810
    .local v0, layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 811
    new-instance v4, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$3;

    invoke-direct {v4, p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$3;-><init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0
.end method
