.class Landroid/support/graphics/drawable/AndroidResources;
.super Ljava/lang/Object;
.source "AndroidResources.java"


# static fields
.field static final styleable_AnimatedVectorDrawable:[I = null

.field static final styleable_AnimatedVectorDrawableTarget:[I = null

.field static final styleable_AnimatedVectorDrawableTarget_animation:I = 0x1

.field static final styleable_AnimatedVectorDrawableTarget_name:I = 0x0

.field static final styleable_AnimatedVectorDrawable_drawable:I = 0x0

.field static final styleable_VectorDrawableClipPath:[I = null

.field static final styleable_VectorDrawableClipPath_name:I = 0x0

.field static final styleable_VectorDrawableClipPath_pathData:I = 0x1

.field static final styleable_VectorDrawableGroup:[I = null

.field static final styleable_VectorDrawableGroup_name:I = 0x0

.field static final styleable_VectorDrawableGroup_pivotX:I = 0x1

.field static final styleable_VectorDrawableGroup_pivotY:I = 0x2

.field static final styleable_VectorDrawableGroup_rotation:I = 0x5

.field static final styleable_VectorDrawableGroup_scaleX:I = 0x3

.field static final styleable_VectorDrawableGroup_scaleY:I = 0x4

.field static final styleable_VectorDrawableGroup_translateX:I = 0x6

.field static final styleable_VectorDrawableGroup_translateY:I = 0x7

.field static final styleable_VectorDrawablePath:[I = null

.field static final styleable_VectorDrawablePath_fillAlpha:I = 0xc

.field static final styleable_VectorDrawablePath_fillColor:I = 0x1

.field static final styleable_VectorDrawablePath_name:I = 0x0

.field static final styleable_VectorDrawablePath_pathData:I = 0x2

.field static final styleable_VectorDrawablePath_strokeAlpha:I = 0xb

.field static final styleable_VectorDrawablePath_strokeColor:I = 0x3

.field static final styleable_VectorDrawablePath_strokeLineCap:I = 0x8

.field static final styleable_VectorDrawablePath_strokeLineJoin:I = 0x9

.field static final styleable_VectorDrawablePath_strokeMiterLimit:I = 0xa

.field static final styleable_VectorDrawablePath_strokeWidth:I = 0x4

.field static final styleable_VectorDrawablePath_trimPathEnd:I = 0x6

.field static final styleable_VectorDrawablePath_trimPathOffset:I = 0x7

.field static final styleable_VectorDrawablePath_trimPathStart:I = 0x5

.field static final styleable_VectorDrawableTypeArray:[I = null

.field static final styleable_VectorDrawable_alpha:I = 0x4

.field static final styleable_VectorDrawable_autoMirrored:I = 0x5

.field static final styleable_VectorDrawable_height:I = 0x2

.field static final styleable_VectorDrawable_name:I = 0x0

.field static final styleable_VectorDrawable_tint:I = 0x1

.field static final styleable_VectorDrawable_tintMode:I = 0x6

.field static final styleable_VectorDrawable_viewportHeight:I = 0x8

.field static final styleable_VectorDrawable_viewportWidth:I = 0x7

.field static final styleable_VectorDrawable_width:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 20
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableTypeArray:[I

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableGroup:[I

    .line 47
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawablePath:[I

    .line 67
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableClipPath:[I

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010199

    aput v2, v0, v1

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_AnimatedVectorDrawable:[I

    .line 77
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_AnimatedVectorDrawableTarget:[I

    return-void

    .line 20
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x1t 0x1t
        0x21t 0x1t 0x1t 0x1t
        0x55t 0x1t 0x1t 0x1t
        0x59t 0x1t 0x1t 0x1t
        0x1ft 0x3t 0x1t 0x1t
        0xeat 0x3t 0x1t 0x1t
        0xfbt 0x3t 0x1t 0x1t
        0x2t 0x4t 0x1t 0x1t
        0x3t 0x4t 0x1t 0x1t
    .end array-data

    .line 34
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x1t 0x1t
        0xb5t 0x1t 0x1t 0x1t
        0xb6t 0x1t 0x1t 0x1t
        0x24t 0x3t 0x1t 0x1t
        0x25t 0x3t 0x1t 0x1t
        0x26t 0x3t 0x1t 0x1t
        0x5at 0x4t 0x1t 0x1t
        0x5bt 0x4t 0x1t 0x1t
    .end array-data

    .line 47
    :array_2
    .array-data 0x4
        0x3t 0x0t 0x1t 0x1t
        0x4t 0x4t 0x1t 0x1t
        0x5t 0x4t 0x1t 0x1t
        0x6t 0x4t 0x1t 0x1t
        0x7t 0x4t 0x1t 0x1t
        0x8t 0x4t 0x1t 0x1t
        0x9t 0x4t 0x1t 0x1t
        0xat 0x4t 0x1t 0x1t
        0xbt 0x4t 0x1t 0x1t
        0xct 0x4t 0x1t 0x1t
        0xdt 0x4t 0x1t 0x1t
        0xcbt 0x4t 0x1t 0x1t
        0xcct 0x4t 0x1t 0x1t
    .end array-data

    .line 67
    :array_3
    .array-data 0x4
        0x3t 0x0t 0x1t 0x1t
        0x5t 0x4t 0x1t 0x1t
    .end array-data

    .line 77
    :array_4
    .array-data 0x4
        0x3t 0x0t 0x1t 0x1t
        0xcdt 0x1t 0x1t 0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
