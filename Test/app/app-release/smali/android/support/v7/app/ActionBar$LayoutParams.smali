.class public Landroid/support/v7/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "gravity"

    .prologue
    .line 1352
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(III)V

    .line 1353
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1342
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1331
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1343
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1344
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "gravity"

    .prologue
    .line 1347
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1331
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1348
    iput p3, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1349
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "c"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter "attrs"
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 1334
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1331
    iput v2, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1336
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1337
    .local v0, a:Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBarLayout_android_layout_gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1338
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1339
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 1356
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1331
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1358
    iget v0, p1, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1359
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 1362
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1331
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1363
    return-void
.end method
