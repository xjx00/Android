.class Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1520
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .parameter "v"
    .parameter "insets"

    .prologue
    .line 1643
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .parameter "view"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "consumed"

    .prologue
    .line 1603
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/ViewCompatLollipop;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .parameter "view"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1608
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatLollipop;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 1
    .parameter "view"
    .parameter "dx"
    .parameter "dy"
    .parameter "consumed"
    .parameter "offsetInWindow"

    .prologue
    .line 1596
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/ViewCompatLollipop;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 1
    .parameter "view"
    .parameter "dxConsumed"
    .parameter "dyConsumed"
    .parameter "dxUnconsumed"
    .parameter "dyUnconsumed"
    .parameter "offsetInWindow"

    .prologue
    .line 1589
    invoke-static/range {p1 .. p6}, Landroid/support/v4/view/ViewCompatLollipop;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result v0

    return v0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "view"

    .prologue
    .line 1618
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .parameter "view"

    .prologue
    .line 1633
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 1543
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .parameter "view"

    .prologue
    .line 1528
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 1553
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getZ(Landroid/view/View;)F
    .locals 1
    .parameter "view"

    .prologue
    .line 1648
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->getZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1583
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1613
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1568
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 1653
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1654
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 1658
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1659
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .parameter "v"
    .parameter "insets"

    .prologue
    .line 1638
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1533
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->requestApplyInsets(Landroid/view/View;)V

    .line 1534
    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "view"
    .parameter "tintList"

    .prologue
    .line 1623
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 1624
    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .parameter "view"
    .parameter "mode"

    .prologue
    .line 1628
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 1629
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "elevation"

    .prologue
    .line 1538
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setElevation(Landroid/view/View;F)V

    .line 1539
    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "enabled"

    .prologue
    .line 1563
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 1564
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 1558
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 1559
    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "transitionName"

    .prologue
    .line 1523
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 1524
    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "translationZ"

    .prologue
    .line 1548
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setTranslationZ(Landroid/view/View;F)V

    .line 1549
    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .locals 1
    .parameter "view"
    .parameter "axes"

    .prologue
    .line 1573
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->startNestedScroll(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1578
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->stopNestedScroll(Landroid/view/View;)V

    .line 1579
    return-void
.end method
