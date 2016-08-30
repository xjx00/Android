.class public Landroid/support/v7/app/AppCompatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Landroid/support/v7/app/AppCompatCallback;
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;


# instance fields
.field private mDelegate:Landroid/support/v7/app/AppCompatDelegate;

.field private mEatKeyUpEvent:Z

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AppCompatActivity;->mThemeId:I

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 509
    const/16 v3, 0x1000

    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    and-int/lit16 v3, v3, -0x7001

    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_1

    .line 512
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 513
    .local v0, action:I
    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 515
    .local v1, actionBar:Landroid/support/v7/app/ActionBar;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 516
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatActivity;->mEatKeyUpEvent:Z

    .line 524
    .end local v0           #action:I
    .end local v1           #actionBar:Landroid/support/v7/app/ActionBar;
    :goto_0
    return v2

    .line 519
    .restart local v0       #action:I
    :cond_0
    if-ne v0, v2, :cond_1

    iget-boolean v3, p0, Landroid/support/v7/app/AppCompatActivity;->mEatKeyUpEvent:Z

    if-eqz v3, :cond_1

    .line 520
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v7/app/AppCompatActivity;->mEatKeyUpEvent:Z

    goto :goto_0

    .line 524
    .end local v0           #action:I
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Landroid/support/v7/app/AppCompatDelegate;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-nez v0, :cond_0

    .line 502
    invoke-static {p0, p0}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 504
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 413
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 231
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->onSupportContentChanged()V

    .line 453
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    .line 68
    .local v0, delegate:Landroid/support/v7/app/AppCompatDelegate;
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->installViewFactory()V

    .line 69
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->applyDayNight()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/app/AppCompatActivity;->mThemeId:I

    if-eqz v1, :cond_0

    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/app/AppCompatActivity;->mThemeId:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v7/app/AppCompatActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 81
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    return-void

    .line 78
    :cond_1
    iget v1, p0, Landroid/support/v7/app/AppCompatActivity;->mThemeId:I

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0
    .parameter "builder"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    .line 331
    invoke-virtual {p1, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    .line 332
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 194
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onDestroy()V

    .line 195
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 179
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const/4 v1, 0x1

    .line 188
    :goto_0
    return v1

    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 184
    .local v0, ab:Landroid/support/v7/app/ActionBar;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v1

    goto :goto_0

    .line 188
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 476
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 487
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 488
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 169
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onPostResume()V

    .line 170
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0
    .parameter "builder"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    .line 350
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 492
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 493
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 494
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 163
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onStop()V

    .line 164
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 0
    .parameter "mode"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 251
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 0
    .parameter "mode"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 241
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 460
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 4

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 378
    .local v2, upIntent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 379
    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 381
    .local v0, b:Landroid/support/v4/app/TaskStackBuilder;
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 382
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 383
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 386
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v0           #b:Landroid/support/v4/app/TaskStackBuilder;
    :goto_0
    const/4 v3, 0x1

    .line 399
    :goto_1
    return v3

    .line 387
    .restart local v0       #b:Landroid/support/v4/app/TaskStackBuilder;
    :catch_0
    move-exception v1

    .line 390
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    goto :goto_0

    .line 395
    .end local v0           #b:Landroid/support/v4/app/TaskStackBuilder;
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    goto :goto_0

    .line 399
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "title"
    .parameter "color"

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 200
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 1
    .parameter "callback"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end parameter

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(I)V

    .line 137
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1
    .parameter "toolbar"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 127
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .parameter "progress"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .parameter "indeterminate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 298
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .parameter "visible"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .parameter "visible"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .parameter "resid"
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 88
    iput p1, p0, Landroid/support/v7/app/AppCompatActivity;->mThemeId:I

    .line 89
    return-void
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 1
    .parameter "callback"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 224
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0
    .parameter "upIntent"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    .line 446
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 447
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1
    .parameter "featureId"

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1
    .parameter "targetIntent"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    .line 430
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
