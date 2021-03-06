TEMPLATE = lib
CONFIG = qt plugin
QT += maemo5 declarative dbus network

TARGET = hildoncomponents

HEADERS += \
    private/qdeclarativepixmapcache_p.h \
    private/qdeclarativecomponent_p.h \
    action_p.h \
    actiongroup_p.h \
    actiongroup_p_p.h \
    anchorline_p.h \
    anchors_p.h \
    anchors_p_p.h \
    borderimage_p.h \
    borderimage_p_p.h \
    boxstyle_p.h \
    boxstyle_p_p.h \
    button_p.h \
    button_p_p.h \
    buttonrow_p.h \
    buttonrow_p_p.h \
    buttonstyle_p.h \
    buttonstyle_p_p.h \
    checkbox_p.h \
    checkbox_p_p.h \
    checkboxstyle_p.h \
    checkboxstyle_p_p.h \
    column_p.h \
    column_p_p.h \
    dateselector_p.h \
    dialog_p.h \
    dialog_p_p.h \
    doublespinbox_p.h \
    doublespinbox_p_p.h \
    editbar_p.h \
    editbar_p_p.h \
    filesystemmodel_p.h \
    flickable_p.h \
    flickable_p_p.h \
    flickablestyle_p.h \
    flickablestyle_p_p.h \
    flow_p.h \
    flow_p_p.h \
    grid_p.h \
    grid_p_p.h \
    headerview_p.h \
    headerview_p_p.h \
    image_p.h \
    image_p_p.h \
    imagebase_p.h \
    imagebase_p_p.h \
    imageborder_p.h \
    imageproviders_p.h \
    informationbox_p.h \
    informationbox_p_p.h \
    item_p.h \
    item_p_p.h \
    itemaction_p.h \
    keyevent_p.h \
    keys_p.h \
    label_p.h \
    labelstyle_p.h \
    listelement_p.h \
    listitem_p.h \
    listitemborderimage_p.h \
    listitemcontent_p.h \
    listitemcontent_p_p.h \
    listitemimage_p.h \
    listitemimagebase_p.h \
    listitemimagebase_p_p.h \
    listitemlabel_p.h \
    listitemmousearea_p.h \
    listitemprogressbar_p.h \
    listitemrectangle_p.h \
    listitemtext_p.h \
    listmodel_p.h \
    listselector_p.h \
    listselector_p_p.h \
    listview_p.h \
    listview_p_p.h \
    listviewstyle_p.h \
    listviewstyle_p_p.h \
    loader_p.h \
    loader_p_p.h \
    menu_p.h \
    menu_p_p.h \
    menustyle_p.h \
    menustyle_p_p.h \
    modelindex_p.h \
    mousearea_p.h \
    mousearea_p_p.h \
    mouseevent_p.h \
    multilistselector_p.h \
    multilistselector_p_p.h \
    page_p.h \
    page_p_p.h \
    pagestack_p.h \
    pagestack_p_p.h \
    platformstyle_p.h \
    progressbar_p.h \
    progressbar_p_p.h \
    progressbarstyle_p.h \
    progressbarstyle_p_p.h \
    qdeclarativebind_p.h \
    qdeclarativeconnections_p.h \
    qdeclarativetimer_p.h \
    radiobutton_p.h \
    radiobutton_p_p.h \
    rectangle_p.h \
    rectangle_p_p.h \
    rectangleproperties_p.h \
    repeater_p.h \
    row_p.h \
    row_p_p.h \
    screen_p.h \
    screen_p_p.h \
    separator_p.h \
    slider_p.h \
    slider_p_p.h \
    sliderstyle_p.h \
    sliderstyle_p_p.h \
    sortfilterproxymodel_p.h \
    spinbox_p.h \
    spinbox_p_p.h \
    spinboxstyle_p.h \
    spinboxstyle_p_p.h \
    style_p.h \
    style_p_p.h \
    tabbar_p.h \
    tabbar_p_p.h \
    tabbarstyle_p.h \
    tabbarstyle_p_p.h \
    tabgroup_p.h \
    tabgroup_p_p.h \
    tableview_p.h \
    tableview_p_p.h \
    tableviewstyle_p.h \
    tableviewstyle_p_p.h \
    text_p.h \
    text_p_p.h \
    textbrowser_p.h \
    textedit_p.h \
    texteditautoresizer_p.h \
    texteditstyle_p.h \
    texteditstyle_p_p.h \
    textfield_p.h \
    textfield_p_p.h \
    textfieldstyle_p.h \
    textfieldstyle_p_p.h \
    textstyle_p.h \
    timeselector_p.h \
    toolbar_p.h \
    toolbar_p_p.h \
    toolbarstyle_p.h \
    toolbarstyle_p_p.h \
    toolbutton_p.h \
    toolbutton_p_p.h \
    toolbuttonstyle_p.h \
    toolbuttonstyle_p_p.h \
    treeview_p.h \
    treeview_p_p.h \
    treeviewstyle_p.h \
    treeviewstyle_p_p.h \
    valuebutton_p.h \
    valuebutton_p_p.h \
    valueselector_p.h \
    valueselector_p_p.h \
    variantlistmodel_p.h \
    varianttablemodel_p.h \
    window_p.h \
    window_p_p.h \
    zoomarea_p.h \
    plugin_p.h

SOURCES += \
    action.cpp \
    actiongroup.cpp \
    anchors.cpp \
    borderimage.cpp \
    boxstyle.cpp \
    button.cpp \
    buttonrow.cpp \
    buttonstyle.cpp \
    checkbox.cpp \
    checkboxstyle.cpp \
    column.cpp \
    dateselector.cpp \
    dialog.cpp \
    doublespinbox.cpp \
    editbar.cpp \
    filesystemmodel.cpp \
    flickable.cpp \
    flickablestyle.cpp \
    flow.cpp \
    grid.cpp \
    headerview.cpp \
    image.cpp \
    imagebase.cpp \
    imageborder.cpp \
    imageproviders.cpp \
    informationbox.cpp \
    item.cpp \
    itemaction.cpp \
    keyevent.cpp \
    keys.cpp \
    listelement.cpp \
    listitem.cpp \
    listitemborderimage.cpp \
    listitemcontent.cpp \
    listitemimage.cpp \
    listitemimagebase.cpp \
    listitemmousearea.cpp \
    listitemprogressbar.cpp \
    listitemrectangle.cpp \
    listitemtext.cpp \
    listmodel.cpp \
    listselector.cpp \
    listview.cpp \
    listviewstyle.cpp \
    loader.cpp \
    menu.cpp \
    menustyle.cpp \
    mousearea.cpp \
    mouseevent.cpp \
    multilistselector.cpp \
    page.cpp \
    pagestack.cpp \
    platformstyle.cpp \
    progressbar.cpp \
    progressbarstyle.cpp \
    radiobutton.cpp \
    rectangle.cpp \
    rectangleproperties.cpp \
    repeater.cpp \
    row.cpp \
    screen.cpp \
    separator.cpp \
    slider.cpp \
    sliderstyle.cpp \
    spinbox.cpp \
    spinboxstyle.cpp \
    sortfilterproxymodel.cpp \
    style.cpp \
    tabbar.cpp \
    tabbarstyle.cpp \
    tabgroup.cpp \
    tableview.cpp \
    tableviewstyle.cpp \
    text.cpp \
    textbrowser.cpp \
    textedit.cpp \
    texteditstyle.cpp \
    textfield.cpp \
    textfieldstyle.cpp \
    timeselector.cpp \
    toolbar.cpp \
    toolbarstyle.cpp \
    toolbutton.cpp \
    toolbuttonstyle.cpp \
    treeview.cpp \
    treeviewstyle.cpp \
    valuebutton.cpp \
    valueselector.cpp \
    variantlistmodel.cpp \
    varianttablemodel.cpp \
    window.cpp \
    zoomarea.cpp \
    plugin.cpp

qdeclarativesources.files += \
    qml/qmldir \
    qml/FileDialog.qml \
    qml/FolderDialog.qml \
    qml/ProgressDialog.qml \
    qml/QueryDialog.qml

qdeclarativesources.path = /opt/lib/qt4/imports/org/hildon/components
target.path = /opt/lib/qt4/imports/org/hildon/components

INSTALLS += qdeclarativesources target
