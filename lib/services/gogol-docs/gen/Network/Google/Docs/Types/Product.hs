{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Docs.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Docs.Types.Product where

import Network.Google.Docs.Types.Sum
import Network.Google.Prelude

-- | A mask that indicates which of the fields on the base TableCellStyle
-- have been changed in this suggestion. For any field set to true, there
-- is a new suggested value.
--
-- /See:/ 'tableCellStyleSuggestionState' smart constructor.
data TableCellStyleSuggestionState =
  TableCellStyleSuggestionState'
    { _tcsssPaddingLeftSuggested :: !(Maybe Bool)
    , _tcsssPaddingTopSuggested :: !(Maybe Bool)
    , _tcsssBOrderTopSuggested :: !(Maybe Bool)
    , _tcsssRowSpanSuggested :: !(Maybe Bool)
    , _tcsssPaddingBottomSuggested :: !(Maybe Bool)
    , _tcsssBOrderBottomSuggested :: !(Maybe Bool)
    , _tcsssPaddingRightSuggested :: !(Maybe Bool)
    , _tcsssColumnSpanSuggested :: !(Maybe Bool)
    , _tcsssBOrderLeftSuggested :: !(Maybe Bool)
    , _tcsssContentAlignmentSuggested :: !(Maybe Bool)
    , _tcsssBackgRoundColorSuggested :: !(Maybe Bool)
    , _tcsssBOrderRightSuggested :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableCellStyleSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcsssPaddingLeftSuggested'
--
-- * 'tcsssPaddingTopSuggested'
--
-- * 'tcsssBOrderTopSuggested'
--
-- * 'tcsssRowSpanSuggested'
--
-- * 'tcsssPaddingBottomSuggested'
--
-- * 'tcsssBOrderBottomSuggested'
--
-- * 'tcsssPaddingRightSuggested'
--
-- * 'tcsssColumnSpanSuggested'
--
-- * 'tcsssBOrderLeftSuggested'
--
-- * 'tcsssContentAlignmentSuggested'
--
-- * 'tcsssBackgRoundColorSuggested'
--
-- * 'tcsssBOrderRightSuggested'
tableCellStyleSuggestionState
    :: TableCellStyleSuggestionState
tableCellStyleSuggestionState =
  TableCellStyleSuggestionState'
    { _tcsssPaddingLeftSuggested = Nothing
    , _tcsssPaddingTopSuggested = Nothing
    , _tcsssBOrderTopSuggested = Nothing
    , _tcsssRowSpanSuggested = Nothing
    , _tcsssPaddingBottomSuggested = Nothing
    , _tcsssBOrderBottomSuggested = Nothing
    , _tcsssPaddingRightSuggested = Nothing
    , _tcsssColumnSpanSuggested = Nothing
    , _tcsssBOrderLeftSuggested = Nothing
    , _tcsssContentAlignmentSuggested = Nothing
    , _tcsssBackgRoundColorSuggested = Nothing
    , _tcsssBOrderRightSuggested = Nothing
    }


-- | Indicates if there was a suggested change to padding_left.
tcsssPaddingLeftSuggested :: Lens' TableCellStyleSuggestionState (Maybe Bool)
tcsssPaddingLeftSuggested
  = lens _tcsssPaddingLeftSuggested
      (\ s a -> s{_tcsssPaddingLeftSuggested = a})

-- | Indicates if there was a suggested change to padding_top.
tcsssPaddingTopSuggested :: Lens' TableCellStyleSuggestionState (Maybe Bool)
tcsssPaddingTopSuggested
  = lens _tcsssPaddingTopSuggested
      (\ s a -> s{_tcsssPaddingTopSuggested = a})

-- | Indicates if there was a suggested change to border_top.
tcsssBOrderTopSuggested :: Lens' TableCellStyleSuggestionState (Maybe Bool)
tcsssBOrderTopSuggested
  = lens _tcsssBOrderTopSuggested
      (\ s a -> s{_tcsssBOrderTopSuggested = a})

-- | Indicates if there was a suggested change to row_span.
tcsssRowSpanSuggested :: Lens' TableCellStyleSuggestionState (Maybe Bool)
tcsssRowSpanSuggested
  = lens _tcsssRowSpanSuggested
      (\ s a -> s{_tcsssRowSpanSuggested = a})

-- | Indicates if there was a suggested change to padding_bottom.
tcsssPaddingBottomSuggested :: Lens' TableCellStyleSuggestionState (Maybe Bool)
tcsssPaddingBottomSuggested
  = lens _tcsssPaddingBottomSuggested
      (\ s a -> s{_tcsssPaddingBottomSuggested = a})

-- | Indicates if there was a suggested change to border_bottom.
tcsssBOrderBottomSuggested :: Lens' TableCellStyleSuggestionState (Maybe Bool)
tcsssBOrderBottomSuggested
  = lens _tcsssBOrderBottomSuggested
      (\ s a -> s{_tcsssBOrderBottomSuggested = a})

-- | Indicates if there was a suggested change to padding_right.
tcsssPaddingRightSuggested :: Lens' TableCellStyleSuggestionState (Maybe Bool)
tcsssPaddingRightSuggested
  = lens _tcsssPaddingRightSuggested
      (\ s a -> s{_tcsssPaddingRightSuggested = a})

-- | Indicates if there was a suggested change to column_span.
tcsssColumnSpanSuggested :: Lens' TableCellStyleSuggestionState (Maybe Bool)
tcsssColumnSpanSuggested
  = lens _tcsssColumnSpanSuggested
      (\ s a -> s{_tcsssColumnSpanSuggested = a})

-- | Indicates if there was a suggested change to border_left.
tcsssBOrderLeftSuggested :: Lens' TableCellStyleSuggestionState (Maybe Bool)
tcsssBOrderLeftSuggested
  = lens _tcsssBOrderLeftSuggested
      (\ s a -> s{_tcsssBOrderLeftSuggested = a})

-- | Indicates if there was a suggested change to content_alignment.
tcsssContentAlignmentSuggested :: Lens' TableCellStyleSuggestionState (Maybe Bool)
tcsssContentAlignmentSuggested
  = lens _tcsssContentAlignmentSuggested
      (\ s a -> s{_tcsssContentAlignmentSuggested = a})

-- | Indicates if there was a suggested change to background_color.
tcsssBackgRoundColorSuggested :: Lens' TableCellStyleSuggestionState (Maybe Bool)
tcsssBackgRoundColorSuggested
  = lens _tcsssBackgRoundColorSuggested
      (\ s a -> s{_tcsssBackgRoundColorSuggested = a})

-- | Indicates if there was a suggested change to border_right.
tcsssBOrderRightSuggested :: Lens' TableCellStyleSuggestionState (Maybe Bool)
tcsssBOrderRightSuggested
  = lens _tcsssBOrderRightSuggested
      (\ s a -> s{_tcsssBOrderRightSuggested = a})

instance FromJSON TableCellStyleSuggestionState where
        parseJSON
          = withObject "TableCellStyleSuggestionState"
              (\ o ->
                 TableCellStyleSuggestionState' <$>
                   (o .:? "paddingLeftSuggested") <*>
                     (o .:? "paddingTopSuggested")
                     <*> (o .:? "borderTopSuggested")
                     <*> (o .:? "rowSpanSuggested")
                     <*> (o .:? "paddingBottomSuggested")
                     <*> (o .:? "borderBottomSuggested")
                     <*> (o .:? "paddingRightSuggested")
                     <*> (o .:? "columnSpanSuggested")
                     <*> (o .:? "borderLeftSuggested")
                     <*> (o .:? "contentAlignmentSuggested")
                     <*> (o .:? "backgroundColorSuggested")
                     <*> (o .:? "borderRightSuggested"))

instance ToJSON TableCellStyleSuggestionState where
        toJSON TableCellStyleSuggestionState'{..}
          = object
              (catMaybes
                 [("paddingLeftSuggested" .=) <$>
                    _tcsssPaddingLeftSuggested,
                  ("paddingTopSuggested" .=) <$>
                    _tcsssPaddingTopSuggested,
                  ("borderTopSuggested" .=) <$>
                    _tcsssBOrderTopSuggested,
                  ("rowSpanSuggested" .=) <$> _tcsssRowSpanSuggested,
                  ("paddingBottomSuggested" .=) <$>
                    _tcsssPaddingBottomSuggested,
                  ("borderBottomSuggested" .=) <$>
                    _tcsssBOrderBottomSuggested,
                  ("paddingRightSuggested" .=) <$>
                    _tcsssPaddingRightSuggested,
                  ("columnSpanSuggested" .=) <$>
                    _tcsssColumnSpanSuggested,
                  ("borderLeftSuggested" .=) <$>
                    _tcsssBOrderLeftSuggested,
                  ("contentAlignmentSuggested" .=) <$>
                    _tcsssContentAlignmentSuggested,
                  ("backgroundColorSuggested" .=) <$>
                    _tcsssBackgRoundColorSuggested,
                  ("borderRightSuggested" .=) <$>
                    _tcsssBOrderRightSuggested])

-- | A mask that indicates which of the fields on the base
-- EmbeddedObjectBorder have been changed in this suggestion. For any field
-- set to true, there is a new suggested value.
--
-- /See:/ 'embeddedObjectBOrderSuggestionState' smart constructor.
data EmbeddedObjectBOrderSuggestionState =
  EmbeddedObjectBOrderSuggestionState'
    { _eobossDashStyleSuggested :: !(Maybe Bool)
    , _eobossPropertyStateSuggested :: !(Maybe Bool)
    , _eobossColorSuggested :: !(Maybe Bool)
    , _eobossWidthSuggested :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EmbeddedObjectBOrderSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eobossDashStyleSuggested'
--
-- * 'eobossPropertyStateSuggested'
--
-- * 'eobossColorSuggested'
--
-- * 'eobossWidthSuggested'
embeddedObjectBOrderSuggestionState
    :: EmbeddedObjectBOrderSuggestionState
embeddedObjectBOrderSuggestionState =
  EmbeddedObjectBOrderSuggestionState'
    { _eobossDashStyleSuggested = Nothing
    , _eobossPropertyStateSuggested = Nothing
    , _eobossColorSuggested = Nothing
    , _eobossWidthSuggested = Nothing
    }


-- | Indicates if there was a suggested change to dash_style.
eobossDashStyleSuggested :: Lens' EmbeddedObjectBOrderSuggestionState (Maybe Bool)
eobossDashStyleSuggested
  = lens _eobossDashStyleSuggested
      (\ s a -> s{_eobossDashStyleSuggested = a})

-- | Indicates if there was a suggested change to property_state.
eobossPropertyStateSuggested :: Lens' EmbeddedObjectBOrderSuggestionState (Maybe Bool)
eobossPropertyStateSuggested
  = lens _eobossPropertyStateSuggested
      (\ s a -> s{_eobossPropertyStateSuggested = a})

-- | Indicates if there was a suggested change to color.
eobossColorSuggested :: Lens' EmbeddedObjectBOrderSuggestionState (Maybe Bool)
eobossColorSuggested
  = lens _eobossColorSuggested
      (\ s a -> s{_eobossColorSuggested = a})

-- | Indicates if there was a suggested change to width.
eobossWidthSuggested :: Lens' EmbeddedObjectBOrderSuggestionState (Maybe Bool)
eobossWidthSuggested
  = lens _eobossWidthSuggested
      (\ s a -> s{_eobossWidthSuggested = a})

instance FromJSON EmbeddedObjectBOrderSuggestionState
         where
        parseJSON
          = withObject "EmbeddedObjectBOrderSuggestionState"
              (\ o ->
                 EmbeddedObjectBOrderSuggestionState' <$>
                   (o .:? "dashStyleSuggested") <*>
                     (o .:? "propertyStateSuggested")
                     <*> (o .:? "colorSuggested")
                     <*> (o .:? "widthSuggested"))

instance ToJSON EmbeddedObjectBOrderSuggestionState
         where
        toJSON EmbeddedObjectBOrderSuggestionState'{..}
          = object
              (catMaybes
                 [("dashStyleSuggested" .=) <$>
                    _eobossDashStyleSuggested,
                  ("propertyStateSuggested" .=) <$>
                    _eobossPropertyStateSuggested,
                  ("colorSuggested" .=) <$> _eobossColorSuggested,
                  ("widthSuggested" .=) <$> _eobossWidthSuggested])

-- | A border around a table cell. Table cell borders cannot be transparent.
-- To hide a table cell border, make its width 0.
--
-- /See:/ 'tableCellBOrder' smart constructor.
data TableCellBOrder =
  TableCellBOrder'
    { _tcboColor :: !(Maybe OptionalColor)
    , _tcboWidth :: !(Maybe Dimension)
    , _tcboDashStyle :: !(Maybe TableCellBOrderDashStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableCellBOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcboColor'
--
-- * 'tcboWidth'
--
-- * 'tcboDashStyle'
tableCellBOrder
    :: TableCellBOrder
tableCellBOrder =
  TableCellBOrder'
    {_tcboColor = Nothing, _tcboWidth = Nothing, _tcboDashStyle = Nothing}


-- | The color of the border. This color cannot be transparent.
tcboColor :: Lens' TableCellBOrder (Maybe OptionalColor)
tcboColor
  = lens _tcboColor (\ s a -> s{_tcboColor = a})

-- | The width of the border.
tcboWidth :: Lens' TableCellBOrder (Maybe Dimension)
tcboWidth
  = lens _tcboWidth (\ s a -> s{_tcboWidth = a})

-- | The dash style of the border.
tcboDashStyle :: Lens' TableCellBOrder (Maybe TableCellBOrderDashStyle)
tcboDashStyle
  = lens _tcboDashStyle
      (\ s a -> s{_tcboDashStyle = a})

instance FromJSON TableCellBOrder where
        parseJSON
          = withObject "TableCellBOrder"
              (\ o ->
                 TableCellBOrder' <$>
                   (o .:? "color") <*> (o .:? "width") <*>
                     (o .:? "dashStyle"))

instance ToJSON TableCellBOrder where
        toJSON TableCellBOrder'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _tcboColor,
                  ("width" .=) <$> _tcboWidth,
                  ("dashStyle" .=) <$> _tcboDashStyle])

-- | Deletes a row from a table.
--
-- /See:/ 'deleteTableRowRequest' smart constructor.
newtype DeleteTableRowRequest =
  DeleteTableRowRequest'
    { _dtrrTableCellLocation :: Maybe TableCellLocation
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteTableRowRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrrTableCellLocation'
deleteTableRowRequest
    :: DeleteTableRowRequest
deleteTableRowRequest =
  DeleteTableRowRequest' {_dtrrTableCellLocation = Nothing}


-- | The reference table cell location from which the row will be deleted.
-- The row this cell spans will be deleted. If this is a merged cell that
-- spans multiple rows, all rows that the cell spans will be deleted. If no
-- rows remain in the table after this deletion, the whole table is
-- deleted.
dtrrTableCellLocation :: Lens' DeleteTableRowRequest (Maybe TableCellLocation)
dtrrTableCellLocation
  = lens _dtrrTableCellLocation
      (\ s a -> s{_dtrrTableCellLocation = a})

instance FromJSON DeleteTableRowRequest where
        parseJSON
          = withObject "DeleteTableRowRequest"
              (\ o ->
                 DeleteTableRowRequest' <$>
                   (o .:? "tableCellLocation"))

instance ToJSON DeleteTableRowRequest where
        toJSON DeleteTableRowRequest'{..}
          = object
              (catMaybes
                 [("tableCellLocation" .=) <$>
                    _dtrrTableCellLocation])

-- | The suggestion state of a NamedStyles message.
--
-- /See:/ 'namedStylesSuggestionState' smart constructor.
newtype NamedStylesSuggestionState =
  NamedStylesSuggestionState'
    { _nsssStylesSuggestionStates :: Maybe [NamedStyleSuggestionState]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamedStylesSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsssStylesSuggestionStates'
namedStylesSuggestionState
    :: NamedStylesSuggestionState
namedStylesSuggestionState =
  NamedStylesSuggestionState' {_nsssStylesSuggestionStates = Nothing}


-- | A mask that indicates which of the fields on the corresponding
-- NamedStyle in styles have been changed in this suggestion. The order of
-- these named style suggestion states match the order of the corresponding
-- named style within the named styles suggestion.
nsssStylesSuggestionStates :: Lens' NamedStylesSuggestionState [NamedStyleSuggestionState]
nsssStylesSuggestionStates
  = lens _nsssStylesSuggestionStates
      (\ s a -> s{_nsssStylesSuggestionStates = a})
      . _Default
      . _Coerce

instance FromJSON NamedStylesSuggestionState where
        parseJSON
          = withObject "NamedStylesSuggestionState"
              (\ o ->
                 NamedStylesSuggestionState' <$>
                   (o .:? "stylesSuggestionStates" .!= mempty))

instance ToJSON NamedStylesSuggestionState where
        toJSON NamedStylesSuggestionState'{..}
          = object
              (catMaybes
                 [("stylesSuggestionStates" .=) <$>
                    _nsssStylesSuggestionStates])

-- | The positioning of a PositionedObject. The positioned object is
-- positioned relative to the beginning of the Paragraph it is tethered to.
--
-- /See:/ 'positionedObjectPositioning' smart constructor.
data PositionedObjectPositioning =
  PositionedObjectPositioning'
    { _popLayout :: !(Maybe PositionedObjectPositioningLayout)
    , _popTopOffSet :: !(Maybe Dimension)
    , _popLeftOffSet :: !(Maybe Dimension)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PositionedObjectPositioning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'popLayout'
--
-- * 'popTopOffSet'
--
-- * 'popLeftOffSet'
positionedObjectPositioning
    :: PositionedObjectPositioning
positionedObjectPositioning =
  PositionedObjectPositioning'
    {_popLayout = Nothing, _popTopOffSet = Nothing, _popLeftOffSet = Nothing}


-- | The layout of this positioned object.
popLayout :: Lens' PositionedObjectPositioning (Maybe PositionedObjectPositioningLayout)
popLayout
  = lens _popLayout (\ s a -> s{_popLayout = a})

-- | The offset of the top edge of the positioned object relative to the
-- beginning of the Paragraph it is tethered to. The exact positioning of
-- the object can depend on other content in the document and the
-- document\'s styling.
popTopOffSet :: Lens' PositionedObjectPositioning (Maybe Dimension)
popTopOffSet
  = lens _popTopOffSet (\ s a -> s{_popTopOffSet = a})

-- | The offset of the left edge of the positioned object relative to the
-- beginning of the Paragraph it is tethered to. The exact positioning of
-- the object can depend on other content in the document and the
-- document\'s styling.
popLeftOffSet :: Lens' PositionedObjectPositioning (Maybe Dimension)
popLeftOffSet
  = lens _popLeftOffSet
      (\ s a -> s{_popLeftOffSet = a})

instance FromJSON PositionedObjectPositioning where
        parseJSON
          = withObject "PositionedObjectPositioning"
              (\ o ->
                 PositionedObjectPositioning' <$>
                   (o .:? "layout") <*> (o .:? "topOffset") <*>
                     (o .:? "leftOffset"))

instance ToJSON PositionedObjectPositioning where
        toJSON PositionedObjectPositioning'{..}
          = object
              (catMaybes
                 [("layout" .=) <$> _popLayout,
                  ("topOffset" .=) <$> _popTopOffSet,
                  ("leftOffset" .=) <$> _popLeftOffSet])

-- | A suggested change to a ParagraphStyle.
--
-- /See:/ 'suggestedParagraphStyle' smart constructor.
data SuggestedParagraphStyle =
  SuggestedParagraphStyle'
    { _spsParagraphStyleSuggestionState :: !(Maybe ParagraphStyleSuggestionState)
    , _spsParagraphStyle :: !(Maybe ParagraphStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestedParagraphStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spsParagraphStyleSuggestionState'
--
-- * 'spsParagraphStyle'
suggestedParagraphStyle
    :: SuggestedParagraphStyle
suggestedParagraphStyle =
  SuggestedParagraphStyle'
    {_spsParagraphStyleSuggestionState = Nothing, _spsParagraphStyle = Nothing}


-- | A mask that indicates which of the fields on the base ParagraphStyle
-- have been changed in this suggestion.
spsParagraphStyleSuggestionState :: Lens' SuggestedParagraphStyle (Maybe ParagraphStyleSuggestionState)
spsParagraphStyleSuggestionState
  = lens _spsParagraphStyleSuggestionState
      (\ s a -> s{_spsParagraphStyleSuggestionState = a})

-- | A ParagraphStyle that only includes the changes made in this suggestion.
-- This can be used along with the paragraph_suggestion_state to see which
-- fields have changed and their new values.
spsParagraphStyle :: Lens' SuggestedParagraphStyle (Maybe ParagraphStyle)
spsParagraphStyle
  = lens _spsParagraphStyle
      (\ s a -> s{_spsParagraphStyle = a})

instance FromJSON SuggestedParagraphStyle where
        parseJSON
          = withObject "SuggestedParagraphStyle"
              (\ o ->
                 SuggestedParagraphStyle' <$>
                   (o .:? "paragraphStyleSuggestionState") <*>
                     (o .:? "paragraphStyle"))

instance ToJSON SuggestedParagraphStyle where
        toJSON SuggestedParagraphStyle'{..}
          = object
              (catMaybes
                 [("paragraphStyleSuggestionState" .=) <$>
                    _spsParagraphStyleSuggestionState,
                  ("paragraphStyle" .=) <$> _spsParagraphStyle])

-- | Properties of a PositionedObject.
--
-- /See:/ 'positionedObjectProperties' smart constructor.
data PositionedObjectProperties =
  PositionedObjectProperties'
    { _popEmbeddedObject :: !(Maybe EmbeddedObject)
    , _popPositioning :: !(Maybe PositionedObjectPositioning)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PositionedObjectProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'popEmbeddedObject'
--
-- * 'popPositioning'
positionedObjectProperties
    :: PositionedObjectProperties
positionedObjectProperties =
  PositionedObjectProperties'
    {_popEmbeddedObject = Nothing, _popPositioning = Nothing}


-- | The embedded object of this positioned object.
popEmbeddedObject :: Lens' PositionedObjectProperties (Maybe EmbeddedObject)
popEmbeddedObject
  = lens _popEmbeddedObject
      (\ s a -> s{_popEmbeddedObject = a})

-- | The positioning of this positioned object relative to the newline of the
-- Paragraph that references this positioned object.
popPositioning :: Lens' PositionedObjectProperties (Maybe PositionedObjectPositioning)
popPositioning
  = lens _popPositioning
      (\ s a -> s{_popPositioning = a})

instance FromJSON PositionedObjectProperties where
        parseJSON
          = withObject "PositionedObjectProperties"
              (\ o ->
                 PositionedObjectProperties' <$>
                   (o .:? "embeddedObject") <*> (o .:? "positioning"))

instance ToJSON PositionedObjectProperties where
        toJSON PositionedObjectProperties'{..}
          = object
              (catMaybes
                 [("embeddedObject" .=) <$> _popEmbeddedObject,
                  ("positioning" .=) <$> _popPositioning])

-- | A named style. Paragraphs in the document can inherit their TextStyle
-- and ParagraphStyle from this named style when they have the same named
-- style type.
--
-- /See:/ 'namedStyle' smart constructor.
data NamedStyle =
  NamedStyle'
    { _nsNamedStyleType :: !(Maybe NamedStyleNamedStyleType)
    , _nsTextStyle :: !(Maybe TextStyle)
    , _nsParagraphStyle :: !(Maybe ParagraphStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamedStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsNamedStyleType'
--
-- * 'nsTextStyle'
--
-- * 'nsParagraphStyle'
namedStyle
    :: NamedStyle
namedStyle =
  NamedStyle'
    { _nsNamedStyleType = Nothing
    , _nsTextStyle = Nothing
    , _nsParagraphStyle = Nothing
    }


-- | The type of this named style.
nsNamedStyleType :: Lens' NamedStyle (Maybe NamedStyleNamedStyleType)
nsNamedStyleType
  = lens _nsNamedStyleType
      (\ s a -> s{_nsNamedStyleType = a})

-- | The text style of this named style.
nsTextStyle :: Lens' NamedStyle (Maybe TextStyle)
nsTextStyle
  = lens _nsTextStyle (\ s a -> s{_nsTextStyle = a})

-- | The paragraph style of this named style.
nsParagraphStyle :: Lens' NamedStyle (Maybe ParagraphStyle)
nsParagraphStyle
  = lens _nsParagraphStyle
      (\ s a -> s{_nsParagraphStyle = a})

instance FromJSON NamedStyle where
        parseJSON
          = withObject "NamedStyle"
              (\ o ->
                 NamedStyle' <$>
                   (o .:? "namedStyleType") <*> (o .:? "textStyle") <*>
                     (o .:? "paragraphStyle"))

instance ToJSON NamedStyle where
        toJSON NamedStyle'{..}
          = object
              (catMaybes
                 [("namedStyleType" .=) <$> _nsNamedStyleType,
                  ("textStyle" .=) <$> _nsTextStyle,
                  ("paragraphStyle" .=) <$> _nsParagraphStyle])

-- | Deletes a NamedRange.
--
-- /See:/ 'deleteNamedRangeRequest' smart constructor.
data DeleteNamedRangeRequest =
  DeleteNamedRangeRequest'
    { _dnrrNamedRangeId :: !(Maybe Text)
    , _dnrrName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteNamedRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnrrNamedRangeId'
--
-- * 'dnrrName'
deleteNamedRangeRequest
    :: DeleteNamedRangeRequest
deleteNamedRangeRequest =
  DeleteNamedRangeRequest' {_dnrrNamedRangeId = Nothing, _dnrrName = Nothing}


-- | The ID of the named range to delete.
dnrrNamedRangeId :: Lens' DeleteNamedRangeRequest (Maybe Text)
dnrrNamedRangeId
  = lens _dnrrNamedRangeId
      (\ s a -> s{_dnrrNamedRangeId = a})

-- | The name of the range(s) to delete. All named ranges with the given name
-- will be deleted.
dnrrName :: Lens' DeleteNamedRangeRequest (Maybe Text)
dnrrName = lens _dnrrName (\ s a -> s{_dnrrName = a})

instance FromJSON DeleteNamedRangeRequest where
        parseJSON
          = withObject "DeleteNamedRangeRequest"
              (\ o ->
                 DeleteNamedRangeRequest' <$>
                   (o .:? "namedRangeId") <*> (o .:? "name"))

instance ToJSON DeleteNamedRangeRequest where
        toJSON DeleteNamedRangeRequest'{..}
          = object
              (catMaybes
                 [("namedRangeId" .=) <$> _dnrrNamedRangeId,
                  ("name" .=) <$> _dnrrName])

-- | A mask that indicates which of the fields on the base
-- EmbeddedDrawingProperties have been changed in this suggestion. For any
-- field set to true, there is a new suggested value.
--
-- /See:/ 'embeddedDrawingPropertiesSuggestionState' smart constructor.
data EmbeddedDrawingPropertiesSuggestionState =
  EmbeddedDrawingPropertiesSuggestionState'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EmbeddedDrawingPropertiesSuggestionState' with the minimum fields required to make a request.
--
embeddedDrawingPropertiesSuggestionState
    :: EmbeddedDrawingPropertiesSuggestionState
embeddedDrawingPropertiesSuggestionState =
  EmbeddedDrawingPropertiesSuggestionState'


instance FromJSON
           EmbeddedDrawingPropertiesSuggestionState
         where
        parseJSON
          = withObject
              "EmbeddedDrawingPropertiesSuggestionState"
              (\ o ->
                 pure EmbeddedDrawingPropertiesSuggestionState')

instance ToJSON
           EmbeddedDrawingPropertiesSuggestionState
         where
        toJSON = const emptyObject

-- | A tab stop within a paragraph.
--
-- /See:/ 'tabStop' smart constructor.
data TabStop =
  TabStop'
    { _tsOffSet :: !(Maybe Dimension)
    , _tsAlignment :: !(Maybe TabStopAlignment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TabStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsOffSet'
--
-- * 'tsAlignment'
tabStop
    :: TabStop
tabStop = TabStop' {_tsOffSet = Nothing, _tsAlignment = Nothing}


-- | The offset between this tab stop and the start margin.
tsOffSet :: Lens' TabStop (Maybe Dimension)
tsOffSet = lens _tsOffSet (\ s a -> s{_tsOffSet = a})

-- | The alignment of this tab stop. If unset, the value defaults to START.
tsAlignment :: Lens' TabStop (Maybe TabStopAlignment)
tsAlignment
  = lens _tsAlignment (\ s a -> s{_tsAlignment = a})

instance FromJSON TabStop where
        parseJSON
          = withObject "TabStop"
              (\ o ->
                 TabStop' <$>
                   (o .:? "offset") <*> (o .:? "alignment"))

instance ToJSON TabStop where
        toJSON TabStop'{..}
          = object
              (catMaybes
                 [("offset" .=) <$> _tsOffSet,
                  ("alignment" .=) <$> _tsAlignment])

-- | A collection of all the NamedRanges in the document that share a given
-- name.
--
-- /See:/ 'namedRanges' smart constructor.
data NamedRanges =
  NamedRanges'
    { _nrNamedRanges :: !(Maybe [NamedRange])
    , _nrName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamedRanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nrNamedRanges'
--
-- * 'nrName'
namedRanges
    :: NamedRanges
namedRanges = NamedRanges' {_nrNamedRanges = Nothing, _nrName = Nothing}


-- | The NamedRanges that share the same name.
nrNamedRanges :: Lens' NamedRanges [NamedRange]
nrNamedRanges
  = lens _nrNamedRanges
      (\ s a -> s{_nrNamedRanges = a})
      . _Default
      . _Coerce

-- | The name that all the named ranges share.
nrName :: Lens' NamedRanges (Maybe Text)
nrName = lens _nrName (\ s a -> s{_nrName = a})

instance FromJSON NamedRanges where
        parseJSON
          = withObject "NamedRanges"
              (\ o ->
                 NamedRanges' <$>
                   (o .:? "namedRanges" .!= mempty) <*> (o .:? "name"))

instance ToJSON NamedRanges where
        toJSON NamedRanges'{..}
          = object
              (catMaybes
                 [("namedRanges" .=) <$> _nrNamedRanges,
                  ("name" .=) <$> _nrName])

-- | The suggested style changes to this row, keyed by suggestion ID.
--
-- /See:/ 'tableRowSuggestedTableRowStyleChanges' smart constructor.
newtype TableRowSuggestedTableRowStyleChanges =
  TableRowSuggestedTableRowStyleChanges'
    { _trstrscAddtional :: HashMap Text SuggestedTableRowStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableRowSuggestedTableRowStyleChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trstrscAddtional'
tableRowSuggestedTableRowStyleChanges
    :: HashMap Text SuggestedTableRowStyle -- ^ 'trstrscAddtional'
    -> TableRowSuggestedTableRowStyleChanges
tableRowSuggestedTableRowStyleChanges pTrstrscAddtional_ =
  TableRowSuggestedTableRowStyleChanges'
    {_trstrscAddtional = _Coerce # pTrstrscAddtional_}


trstrscAddtional :: Lens' TableRowSuggestedTableRowStyleChanges (HashMap Text SuggestedTableRowStyle)
trstrscAddtional
  = lens _trstrscAddtional
      (\ s a -> s{_trstrscAddtional = a})
      . _Coerce

instance FromJSON
           TableRowSuggestedTableRowStyleChanges
         where
        parseJSON
          = withObject "TableRowSuggestedTableRowStyleChanges"
              (\ o ->
                 TableRowSuggestedTableRowStyleChanges' <$>
                   (parseJSONObject o))

instance ToJSON TableRowSuggestedTableRowStyleChanges
         where
        toJSON = toJSON . _trstrscAddtional

-- | A mask that indicates which of the fields on the base
-- PositionedObjectProperties have been changed in this suggestion. For any
-- field set to true, there is a new suggested value.
--
-- /See:/ 'positionedObjectPropertiesSuggestionState' smart constructor.
data PositionedObjectPropertiesSuggestionState =
  PositionedObjectPropertiesSuggestionState'
    { _popssPositioningSuggestionState :: !(Maybe PositionedObjectPositioningSuggestionState)
    , _popssEmbeddedObjectSuggestionState :: !(Maybe EmbeddedObjectSuggestionState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PositionedObjectPropertiesSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'popssPositioningSuggestionState'
--
-- * 'popssEmbeddedObjectSuggestionState'
positionedObjectPropertiesSuggestionState
    :: PositionedObjectPropertiesSuggestionState
positionedObjectPropertiesSuggestionState =
  PositionedObjectPropertiesSuggestionState'
    { _popssPositioningSuggestionState = Nothing
    , _popssEmbeddedObjectSuggestionState = Nothing
    }


-- | A mask that indicates which of the fields in positioning have been
-- changed in this suggestion.
popssPositioningSuggestionState :: Lens' PositionedObjectPropertiesSuggestionState (Maybe PositionedObjectPositioningSuggestionState)
popssPositioningSuggestionState
  = lens _popssPositioningSuggestionState
      (\ s a -> s{_popssPositioningSuggestionState = a})

-- | A mask that indicates which of the fields in embedded_object have been
-- changed in this suggestion.
popssEmbeddedObjectSuggestionState :: Lens' PositionedObjectPropertiesSuggestionState (Maybe EmbeddedObjectSuggestionState)
popssEmbeddedObjectSuggestionState
  = lens _popssEmbeddedObjectSuggestionState
      (\ s a -> s{_popssEmbeddedObjectSuggestionState = a})

instance FromJSON
           PositionedObjectPropertiesSuggestionState
         where
        parseJSON
          = withObject
              "PositionedObjectPropertiesSuggestionState"
              (\ o ->
                 PositionedObjectPropertiesSuggestionState' <$>
                   (o .:? "positioningSuggestionState") <*>
                     (o .:? "embeddedObjectSuggestionState"))

instance ToJSON
           PositionedObjectPropertiesSuggestionState
         where
        toJSON PositionedObjectPropertiesSuggestionState'{..}
          = object
              (catMaybes
                 [("positioningSuggestionState" .=) <$>
                    _popssPositioningSuggestionState,
                  ("embeddedObjectSuggestionState" .=) <$>
                    _popssEmbeddedObjectSuggestionState])

-- | Creates a Footnote segment and inserts a new FootnoteReference to it at
-- the given location. The new Footnote segment will contain a space
-- followed by a newline character.
--
-- /See:/ 'createFootNoteRequest' smart constructor.
data CreateFootNoteRequest =
  CreateFootNoteRequest'
    { _cfnrLocation :: !(Maybe Location)
    , _cfnrEndOfSegmentLocation :: !(Maybe EndOfSegmentLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateFootNoteRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfnrLocation'
--
-- * 'cfnrEndOfSegmentLocation'
createFootNoteRequest
    :: CreateFootNoteRequest
createFootNoteRequest =
  CreateFootNoteRequest'
    {_cfnrLocation = Nothing, _cfnrEndOfSegmentLocation = Nothing}


-- | Inserts the footnote reference at a specific index in the document. The
-- footnote reference must be inserted inside the bounds of an existing
-- Paragraph. For instance, it cannot be inserted at a table\'s start index
-- (i.e. between the table and its preceding paragraph). Footnote
-- references cannot be inserted inside an equation, header, footer or
-- footnote. Since footnote references can only be inserted in the body,
-- the segment ID field must be empty.
cfnrLocation :: Lens' CreateFootNoteRequest (Maybe Location)
cfnrLocation
  = lens _cfnrLocation (\ s a -> s{_cfnrLocation = a})

-- | Inserts the footnote reference at the end of the document body. Footnote
-- references cannot be inserted inside a header, footer or footnote. Since
-- footnote references can only be inserted in the body, the segment ID
-- field must be empty.
cfnrEndOfSegmentLocation :: Lens' CreateFootNoteRequest (Maybe EndOfSegmentLocation)
cfnrEndOfSegmentLocation
  = lens _cfnrEndOfSegmentLocation
      (\ s a -> s{_cfnrEndOfSegmentLocation = a})

instance FromJSON CreateFootNoteRequest where
        parseJSON
          = withObject "CreateFootNoteRequest"
              (\ o ->
                 CreateFootNoteRequest' <$>
                   (o .:? "location") <*>
                     (o .:? "endOfSegmentLocation"))

instance ToJSON CreateFootNoteRequest where
        toJSON CreateFootNoteRequest'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _cfnrLocation,
                  ("endOfSegmentLocation" .=) <$>
                    _cfnrEndOfSegmentLocation])

-- | A mask that indicates which of the fields on the base
-- PositionedObjectPositioning have been changed in this suggestion. For
-- any field set to true, there is a new suggested value.
--
-- /See:/ 'positionedObjectPositioningSuggestionState' smart constructor.
data PositionedObjectPositioningSuggestionState =
  PositionedObjectPositioningSuggestionState'
    { _popssTopOffSetSuggested :: !(Maybe Bool)
    , _popssLayoutSuggested :: !(Maybe Bool)
    , _popssLeftOffSetSuggested :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PositionedObjectPositioningSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'popssTopOffSetSuggested'
--
-- * 'popssLayoutSuggested'
--
-- * 'popssLeftOffSetSuggested'
positionedObjectPositioningSuggestionState
    :: PositionedObjectPositioningSuggestionState
positionedObjectPositioningSuggestionState =
  PositionedObjectPositioningSuggestionState'
    { _popssTopOffSetSuggested = Nothing
    , _popssLayoutSuggested = Nothing
    , _popssLeftOffSetSuggested = Nothing
    }


-- | Indicates if there was a suggested change to top_offset.
popssTopOffSetSuggested :: Lens' PositionedObjectPositioningSuggestionState (Maybe Bool)
popssTopOffSetSuggested
  = lens _popssTopOffSetSuggested
      (\ s a -> s{_popssTopOffSetSuggested = a})

-- | Indicates if there was a suggested change to layout.
popssLayoutSuggested :: Lens' PositionedObjectPositioningSuggestionState (Maybe Bool)
popssLayoutSuggested
  = lens _popssLayoutSuggested
      (\ s a -> s{_popssLayoutSuggested = a})

-- | Indicates if there was a suggested change to left_offset.
popssLeftOffSetSuggested :: Lens' PositionedObjectPositioningSuggestionState (Maybe Bool)
popssLeftOffSetSuggested
  = lens _popssLeftOffSetSuggested
      (\ s a -> s{_popssLeftOffSetSuggested = a})

instance FromJSON
           PositionedObjectPositioningSuggestionState
         where
        parseJSON
          = withObject
              "PositionedObjectPositioningSuggestionState"
              (\ o ->
                 PositionedObjectPositioningSuggestionState' <$>
                   (o .:? "topOffsetSuggested") <*>
                     (o .:? "layoutSuggested")
                     <*> (o .:? "leftOffsetSuggested"))

instance ToJSON
           PositionedObjectPositioningSuggestionState
         where
        toJSON
          PositionedObjectPositioningSuggestionState'{..}
          = object
              (catMaybes
                 [("topOffsetSuggested" .=) <$>
                    _popssTopOffSetSuggested,
                  ("layoutSuggested" .=) <$> _popssLayoutSuggested,
                  ("leftOffsetSuggested" .=) <$>
                    _popssLeftOffSetSuggested])

-- | A suggestion state of a NamedStyle message.
--
-- /See:/ 'namedStyleSuggestionState' smart constructor.
data NamedStyleSuggestionState =
  NamedStyleSuggestionState'
    { _nsssParagraphStyleSuggestionState :: !(Maybe ParagraphStyleSuggestionState)
    , _nsssNamedStyleType :: !(Maybe NamedStyleSuggestionStateNamedStyleType)
    , _nsssTextStyleSuggestionState :: !(Maybe TextStyleSuggestionState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamedStyleSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsssParagraphStyleSuggestionState'
--
-- * 'nsssNamedStyleType'
--
-- * 'nsssTextStyleSuggestionState'
namedStyleSuggestionState
    :: NamedStyleSuggestionState
namedStyleSuggestionState =
  NamedStyleSuggestionState'
    { _nsssParagraphStyleSuggestionState = Nothing
    , _nsssNamedStyleType = Nothing
    , _nsssTextStyleSuggestionState = Nothing
    }


-- | A mask that indicates which of the fields in paragraph style have been
-- changed in this suggestion.
nsssParagraphStyleSuggestionState :: Lens' NamedStyleSuggestionState (Maybe ParagraphStyleSuggestionState)
nsssParagraphStyleSuggestionState
  = lens _nsssParagraphStyleSuggestionState
      (\ s a -> s{_nsssParagraphStyleSuggestionState = a})

-- | The named style type that this suggestion state corresponds to. This
-- field is provided as a convenience for matching the
-- NamedStyleSuggestionState with its corresponding NamedStyle.
nsssNamedStyleType :: Lens' NamedStyleSuggestionState (Maybe NamedStyleSuggestionStateNamedStyleType)
nsssNamedStyleType
  = lens _nsssNamedStyleType
      (\ s a -> s{_nsssNamedStyleType = a})

-- | A mask that indicates which of the fields in text style have been
-- changed in this suggestion.
nsssTextStyleSuggestionState :: Lens' NamedStyleSuggestionState (Maybe TextStyleSuggestionState)
nsssTextStyleSuggestionState
  = lens _nsssTextStyleSuggestionState
      (\ s a -> s{_nsssTextStyleSuggestionState = a})

instance FromJSON NamedStyleSuggestionState where
        parseJSON
          = withObject "NamedStyleSuggestionState"
              (\ o ->
                 NamedStyleSuggestionState' <$>
                   (o .:? "paragraphStyleSuggestionState") <*>
                     (o .:? "namedStyleType")
                     <*> (o .:? "textStyleSuggestionState"))

instance ToJSON NamedStyleSuggestionState where
        toJSON NamedStyleSuggestionState'{..}
          = object
              (catMaybes
                 [("paragraphStyleSuggestionState" .=) <$>
                    _nsssParagraphStyleSuggestionState,
                  ("namedStyleType" .=) <$> _nsssNamedStyleType,
                  ("textStyleSuggestionState" .=) <$>
                    _nsssTextStyleSuggestionState])

-- | The crop properties of an image. The crop rectangle is represented using
-- fractional offsets from the original content\'s four edges. - If the
-- offset is in the interval (0, 1), the corresponding edge of crop
-- rectangle is positioned inside of the image\'s original bounding
-- rectangle. - If the offset is negative or greater than 1, the
-- corresponding edge of crop rectangle is positioned outside of the
-- image\'s original bounding rectangle. - If all offsets and rotation
-- angle are 0, the image is not cropped.
--
-- /See:/ 'cropProperties' smart constructor.
data CropProperties =
  CropProperties'
    { _cpOffSetBottom :: !(Maybe (Textual Double))
    , _cpOffSetRight :: !(Maybe (Textual Double))
    , _cpAngle :: !(Maybe (Textual Double))
    , _cpOffSetTop :: !(Maybe (Textual Double))
    , _cpOffSetLeft :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CropProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpOffSetBottom'
--
-- * 'cpOffSetRight'
--
-- * 'cpAngle'
--
-- * 'cpOffSetTop'
--
-- * 'cpOffSetLeft'
cropProperties
    :: CropProperties
cropProperties =
  CropProperties'
    { _cpOffSetBottom = Nothing
    , _cpOffSetRight = Nothing
    , _cpAngle = Nothing
    , _cpOffSetTop = Nothing
    , _cpOffSetLeft = Nothing
    }


-- | The offset specifies how far inwards the bottom edge of the crop
-- rectangle is from the bottom edge of the original content as a fraction
-- of the original content\'s height.
cpOffSetBottom :: Lens' CropProperties (Maybe Double)
cpOffSetBottom
  = lens _cpOffSetBottom
      (\ s a -> s{_cpOffSetBottom = a})
      . mapping _Coerce

-- | The offset specifies how far inwards the right edge of the crop
-- rectangle is from the right edge of the original content as a fraction
-- of the original content\'s width.
cpOffSetRight :: Lens' CropProperties (Maybe Double)
cpOffSetRight
  = lens _cpOffSetRight
      (\ s a -> s{_cpOffSetRight = a})
      . mapping _Coerce

-- | The clockwise rotation angle of the crop rectangle around its center, in
-- radians. Rotation is applied after the offsets.
cpAngle :: Lens' CropProperties (Maybe Double)
cpAngle
  = lens _cpAngle (\ s a -> s{_cpAngle = a}) .
      mapping _Coerce

-- | The offset specifies how far inwards the top edge of the crop rectangle
-- is from the top edge of the original content as a fraction of the
-- original content\'s height.
cpOffSetTop :: Lens' CropProperties (Maybe Double)
cpOffSetTop
  = lens _cpOffSetTop (\ s a -> s{_cpOffSetTop = a}) .
      mapping _Coerce

-- | The offset specifies how far inwards the left edge of the crop rectangle
-- is from the left edge of the original content as a fraction of the
-- original content\'s width.
cpOffSetLeft :: Lens' CropProperties (Maybe Double)
cpOffSetLeft
  = lens _cpOffSetLeft (\ s a -> s{_cpOffSetLeft = a})
      . mapping _Coerce

instance FromJSON CropProperties where
        parseJSON
          = withObject "CropProperties"
              (\ o ->
                 CropProperties' <$>
                   (o .:? "offsetBottom") <*> (o .:? "offsetRight") <*>
                     (o .:? "angle")
                     <*> (o .:? "offsetTop")
                     <*> (o .:? "offsetLeft"))

instance ToJSON CropProperties where
        toJSON CropProperties'{..}
          = object
              (catMaybes
                 [("offsetBottom" .=) <$> _cpOffSetBottom,
                  ("offsetRight" .=) <$> _cpOffSetRight,
                  ("angle" .=) <$> _cpAngle,
                  ("offsetTop" .=) <$> _cpOffSetTop,
                  ("offsetLeft" .=) <$> _cpOffSetLeft])

-- | Replaces an existing image with a new image. Replacing an image removes
-- some image effects from the existing image in order to mirror the
-- behavior of the Docs editor.
--
-- /See:/ 'replaceImageRequest' smart constructor.
data ReplaceImageRequest =
  ReplaceImageRequest'
    { _rirImageReplaceMethod :: !(Maybe ReplaceImageRequestImageReplaceMethod)
    , _rirImageObjectId :: !(Maybe Text)
    , _rirURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplaceImageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rirImageReplaceMethod'
--
-- * 'rirImageObjectId'
--
-- * 'rirURI'
replaceImageRequest
    :: ReplaceImageRequest
replaceImageRequest =
  ReplaceImageRequest'
    { _rirImageReplaceMethod = Nothing
    , _rirImageObjectId = Nothing
    , _rirURI = Nothing
    }


-- | The replacement method.
rirImageReplaceMethod :: Lens' ReplaceImageRequest (Maybe ReplaceImageRequestImageReplaceMethod)
rirImageReplaceMethod
  = lens _rirImageReplaceMethod
      (\ s a -> s{_rirImageReplaceMethod = a})

-- | The ID of the existing image that will be replaced.
rirImageObjectId :: Lens' ReplaceImageRequest (Maybe Text)
rirImageObjectId
  = lens _rirImageObjectId
      (\ s a -> s{_rirImageObjectId = a})

-- | The URI of the new image. The image is fetched once at insertion time
-- and a copy is stored for display inside the document. Images must be
-- less than 50MB in size, cannot exceed 25 megapixels, and must be in one
-- of PNG, JPEG, or GIF format. The provided URI can be at most 2 kB in
-- length. The URI itself is saved with the image, and exposed via the
-- ImageProperties.source_uri field.
rirURI :: Lens' ReplaceImageRequest (Maybe Text)
rirURI = lens _rirURI (\ s a -> s{_rirURI = a})

instance FromJSON ReplaceImageRequest where
        parseJSON
          = withObject "ReplaceImageRequest"
              (\ o ->
                 ReplaceImageRequest' <$>
                   (o .:? "imageReplaceMethod") <*>
                     (o .:? "imageObjectId")
                     <*> (o .:? "uri"))

instance ToJSON ReplaceImageRequest where
        toJSON ReplaceImageRequest'{..}
          = object
              (catMaybes
                 [("imageReplaceMethod" .=) <$>
                    _rirImageReplaceMethod,
                  ("imageObjectId" .=) <$> _rirImageObjectId,
                  ("uri" .=) <$> _rirURI])

-- | A mask that indicates which of the fields on the base ParagraphStyle
-- have been changed in this suggestion. For any field set to true, there
-- is a new suggested value.
--
-- /See:/ 'paragraphStyleSuggestionState' smart constructor.
data ParagraphStyleSuggestionState =
  ParagraphStyleSuggestionState'
    { _psssSpacingModeSuggested :: !(Maybe Bool)
    , _psssBOrderTopSuggested :: !(Maybe Bool)
    , _psssLineSpacingSuggested :: !(Maybe Bool)
    , _psssDirectionSuggested :: !(Maybe Bool)
    , _psssAvoidWidowAndOrphanSuggested :: !(Maybe Bool)
    , _psssBOrderBottomSuggested :: !(Maybe Bool)
    , _psssSpaceAboveSuggested :: !(Maybe Bool)
    , _psssNamedStyleTypeSuggested :: !(Maybe Bool)
    , _psssIndentStartSuggested :: !(Maybe Bool)
    , _psssAlignmentSuggested :: !(Maybe Bool)
    , _psssBOrderLeftSuggested :: !(Maybe Bool)
    , _psssSpaceBelowSuggested :: !(Maybe Bool)
    , _psssIndentFirstLineSuggested :: !(Maybe Bool)
    , _psssShadingSuggestionState :: !(Maybe ShadingSuggestionState)
    , _psssHeadingIdSuggested :: !(Maybe Bool)
    , _psssBOrderBetweenSuggested :: !(Maybe Bool)
    , _psssKeepWithNextSuggested :: !(Maybe Bool)
    , _psssIndentEndSuggested :: !(Maybe Bool)
    , _psssBOrderRightSuggested :: !(Maybe Bool)
    , _psssKeepLinesTogetherSuggested :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParagraphStyleSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psssSpacingModeSuggested'
--
-- * 'psssBOrderTopSuggested'
--
-- * 'psssLineSpacingSuggested'
--
-- * 'psssDirectionSuggested'
--
-- * 'psssAvoidWidowAndOrphanSuggested'
--
-- * 'psssBOrderBottomSuggested'
--
-- * 'psssSpaceAboveSuggested'
--
-- * 'psssNamedStyleTypeSuggested'
--
-- * 'psssIndentStartSuggested'
--
-- * 'psssAlignmentSuggested'
--
-- * 'psssBOrderLeftSuggested'
--
-- * 'psssSpaceBelowSuggested'
--
-- * 'psssIndentFirstLineSuggested'
--
-- * 'psssShadingSuggestionState'
--
-- * 'psssHeadingIdSuggested'
--
-- * 'psssBOrderBetweenSuggested'
--
-- * 'psssKeepWithNextSuggested'
--
-- * 'psssIndentEndSuggested'
--
-- * 'psssBOrderRightSuggested'
--
-- * 'psssKeepLinesTogetherSuggested'
paragraphStyleSuggestionState
    :: ParagraphStyleSuggestionState
paragraphStyleSuggestionState =
  ParagraphStyleSuggestionState'
    { _psssSpacingModeSuggested = Nothing
    , _psssBOrderTopSuggested = Nothing
    , _psssLineSpacingSuggested = Nothing
    , _psssDirectionSuggested = Nothing
    , _psssAvoidWidowAndOrphanSuggested = Nothing
    , _psssBOrderBottomSuggested = Nothing
    , _psssSpaceAboveSuggested = Nothing
    , _psssNamedStyleTypeSuggested = Nothing
    , _psssIndentStartSuggested = Nothing
    , _psssAlignmentSuggested = Nothing
    , _psssBOrderLeftSuggested = Nothing
    , _psssSpaceBelowSuggested = Nothing
    , _psssIndentFirstLineSuggested = Nothing
    , _psssShadingSuggestionState = Nothing
    , _psssHeadingIdSuggested = Nothing
    , _psssBOrderBetweenSuggested = Nothing
    , _psssKeepWithNextSuggested = Nothing
    , _psssIndentEndSuggested = Nothing
    , _psssBOrderRightSuggested = Nothing
    , _psssKeepLinesTogetherSuggested = Nothing
    }


-- | Indicates if there was a suggested change to spacing_mode.
psssSpacingModeSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssSpacingModeSuggested
  = lens _psssSpacingModeSuggested
      (\ s a -> s{_psssSpacingModeSuggested = a})

-- | Indicates if there was a suggested change to border_top.
psssBOrderTopSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssBOrderTopSuggested
  = lens _psssBOrderTopSuggested
      (\ s a -> s{_psssBOrderTopSuggested = a})

-- | Indicates if there was a suggested change to line_spacing.
psssLineSpacingSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssLineSpacingSuggested
  = lens _psssLineSpacingSuggested
      (\ s a -> s{_psssLineSpacingSuggested = a})

-- | Indicates if there was a suggested change to direction.
psssDirectionSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssDirectionSuggested
  = lens _psssDirectionSuggested
      (\ s a -> s{_psssDirectionSuggested = a})

-- | Indicates if there was a suggested change to avoid_widow_and_orphan.
psssAvoidWidowAndOrphanSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssAvoidWidowAndOrphanSuggested
  = lens _psssAvoidWidowAndOrphanSuggested
      (\ s a -> s{_psssAvoidWidowAndOrphanSuggested = a})

-- | Indicates if there was a suggested change to border_bottom.
psssBOrderBottomSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssBOrderBottomSuggested
  = lens _psssBOrderBottomSuggested
      (\ s a -> s{_psssBOrderBottomSuggested = a})

-- | Indicates if there was a suggested change to space_above.
psssSpaceAboveSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssSpaceAboveSuggested
  = lens _psssSpaceAboveSuggested
      (\ s a -> s{_psssSpaceAboveSuggested = a})

-- | Indicates if there was a suggested change to named_style_type.
psssNamedStyleTypeSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssNamedStyleTypeSuggested
  = lens _psssNamedStyleTypeSuggested
      (\ s a -> s{_psssNamedStyleTypeSuggested = a})

-- | Indicates if there was a suggested change to indent_start.
psssIndentStartSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssIndentStartSuggested
  = lens _psssIndentStartSuggested
      (\ s a -> s{_psssIndentStartSuggested = a})

-- | Indicates if there was a suggested change to alignment.
psssAlignmentSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssAlignmentSuggested
  = lens _psssAlignmentSuggested
      (\ s a -> s{_psssAlignmentSuggested = a})

-- | Indicates if there was a suggested change to border_left.
psssBOrderLeftSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssBOrderLeftSuggested
  = lens _psssBOrderLeftSuggested
      (\ s a -> s{_psssBOrderLeftSuggested = a})

-- | Indicates if there was a suggested change to space_below.
psssSpaceBelowSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssSpaceBelowSuggested
  = lens _psssSpaceBelowSuggested
      (\ s a -> s{_psssSpaceBelowSuggested = a})

-- | Indicates if there was a suggested change to indent_first_line.
psssIndentFirstLineSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssIndentFirstLineSuggested
  = lens _psssIndentFirstLineSuggested
      (\ s a -> s{_psssIndentFirstLineSuggested = a})

-- | A mask that indicates which of the fields in shading have been changed
-- in this suggestion.
psssShadingSuggestionState :: Lens' ParagraphStyleSuggestionState (Maybe ShadingSuggestionState)
psssShadingSuggestionState
  = lens _psssShadingSuggestionState
      (\ s a -> s{_psssShadingSuggestionState = a})

-- | Indicates if there was a suggested change to heading_id.
psssHeadingIdSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssHeadingIdSuggested
  = lens _psssHeadingIdSuggested
      (\ s a -> s{_psssHeadingIdSuggested = a})

-- | Indicates if there was a suggested change to border_between.
psssBOrderBetweenSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssBOrderBetweenSuggested
  = lens _psssBOrderBetweenSuggested
      (\ s a -> s{_psssBOrderBetweenSuggested = a})

-- | Indicates if there was a suggested change to keep_with_next.
psssKeepWithNextSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssKeepWithNextSuggested
  = lens _psssKeepWithNextSuggested
      (\ s a -> s{_psssKeepWithNextSuggested = a})

-- | Indicates if there was a suggested change to indent_end.
psssIndentEndSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssIndentEndSuggested
  = lens _psssIndentEndSuggested
      (\ s a -> s{_psssIndentEndSuggested = a})

-- | Indicates if there was a suggested change to border_right.
psssBOrderRightSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssBOrderRightSuggested
  = lens _psssBOrderRightSuggested
      (\ s a -> s{_psssBOrderRightSuggested = a})

-- | Indicates if there was a suggested change to keep_lines_together.
psssKeepLinesTogetherSuggested :: Lens' ParagraphStyleSuggestionState (Maybe Bool)
psssKeepLinesTogetherSuggested
  = lens _psssKeepLinesTogetherSuggested
      (\ s a -> s{_psssKeepLinesTogetherSuggested = a})

instance FromJSON ParagraphStyleSuggestionState where
        parseJSON
          = withObject "ParagraphStyleSuggestionState"
              (\ o ->
                 ParagraphStyleSuggestionState' <$>
                   (o .:? "spacingModeSuggested") <*>
                     (o .:? "borderTopSuggested")
                     <*> (o .:? "lineSpacingSuggested")
                     <*> (o .:? "directionSuggested")
                     <*> (o .:? "avoidWidowAndOrphanSuggested")
                     <*> (o .:? "borderBottomSuggested")
                     <*> (o .:? "spaceAboveSuggested")
                     <*> (o .:? "namedStyleTypeSuggested")
                     <*> (o .:? "indentStartSuggested")
                     <*> (o .:? "alignmentSuggested")
                     <*> (o .:? "borderLeftSuggested")
                     <*> (o .:? "spaceBelowSuggested")
                     <*> (o .:? "indentFirstLineSuggested")
                     <*> (o .:? "shadingSuggestionState")
                     <*> (o .:? "headingIdSuggested")
                     <*> (o .:? "borderBetweenSuggested")
                     <*> (o .:? "keepWithNextSuggested")
                     <*> (o .:? "indentEndSuggested")
                     <*> (o .:? "borderRightSuggested")
                     <*> (o .:? "keepLinesTogetherSuggested"))

instance ToJSON ParagraphStyleSuggestionState where
        toJSON ParagraphStyleSuggestionState'{..}
          = object
              (catMaybes
                 [("spacingModeSuggested" .=) <$>
                    _psssSpacingModeSuggested,
                  ("borderTopSuggested" .=) <$>
                    _psssBOrderTopSuggested,
                  ("lineSpacingSuggested" .=) <$>
                    _psssLineSpacingSuggested,
                  ("directionSuggested" .=) <$>
                    _psssDirectionSuggested,
                  ("avoidWidowAndOrphanSuggested" .=) <$>
                    _psssAvoidWidowAndOrphanSuggested,
                  ("borderBottomSuggested" .=) <$>
                    _psssBOrderBottomSuggested,
                  ("spaceAboveSuggested" .=) <$>
                    _psssSpaceAboveSuggested,
                  ("namedStyleTypeSuggested" .=) <$>
                    _psssNamedStyleTypeSuggested,
                  ("indentStartSuggested" .=) <$>
                    _psssIndentStartSuggested,
                  ("alignmentSuggested" .=) <$>
                    _psssAlignmentSuggested,
                  ("borderLeftSuggested" .=) <$>
                    _psssBOrderLeftSuggested,
                  ("spaceBelowSuggested" .=) <$>
                    _psssSpaceBelowSuggested,
                  ("indentFirstLineSuggested" .=) <$>
                    _psssIndentFirstLineSuggested,
                  ("shadingSuggestionState" .=) <$>
                    _psssShadingSuggestionState,
                  ("headingIdSuggested" .=) <$>
                    _psssHeadingIdSuggested,
                  ("borderBetweenSuggested" .=) <$>
                    _psssBOrderBetweenSuggested,
                  ("keepWithNextSuggested" .=) <$>
                    _psssKeepWithNextSuggested,
                  ("indentEndSuggested" .=) <$>
                    _psssIndentEndSuggested,
                  ("borderRightSuggested" .=) <$>
                    _psssBOrderRightSuggested,
                  ("keepLinesTogetherSuggested" .=) <$>
                    _psssKeepLinesTogetherSuggested])

-- | A document footnote.
--
-- /See:/ 'footNote' smart constructor.
data FootNote =
  FootNote'
    { _fnContent :: !(Maybe [StructuralElement])
    , _fnFootNoteId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FootNote' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fnContent'
--
-- * 'fnFootNoteId'
footNote
    :: FootNote
footNote = FootNote' {_fnContent = Nothing, _fnFootNoteId = Nothing}


-- | The contents of the footnote. The indexes for a footnote\'s content
-- begin at zero.
fnContent :: Lens' FootNote [StructuralElement]
fnContent
  = lens _fnContent (\ s a -> s{_fnContent = a}) .
      _Default
      . _Coerce

-- | The ID of the footnote.
fnFootNoteId :: Lens' FootNote (Maybe Text)
fnFootNoteId
  = lens _fnFootNoteId (\ s a -> s{_fnFootNoteId = a})

instance FromJSON FootNote where
        parseJSON
          = withObject "FootNote"
              (\ o ->
                 FootNote' <$>
                   (o .:? "content" .!= mempty) <*>
                     (o .:? "footnoteId"))

instance ToJSON FootNote where
        toJSON FootNote'{..}
          = object
              (catMaybes
                 [("content" .=) <$> _fnContent,
                  ("footnoteId" .=) <$> _fnFootNoteId])

-- | A ParagraphElement representing a spot in the text that is dynamically
-- replaced with content that can change over time, like a page number.
--
-- /See:/ 'autoText' smart constructor.
data AutoText =
  AutoText'
    { _atSuggestedInsertionIds :: !(Maybe [Text])
    , _atSuggestedTextStyleChanges :: !(Maybe AutoTextSuggestedTextStyleChanges)
    , _atSuggestedDeletionIds :: !(Maybe [Text])
    , _atTextStyle :: !(Maybe TextStyle)
    , _atType :: !(Maybe AutoTextType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atSuggestedInsertionIds'
--
-- * 'atSuggestedTextStyleChanges'
--
-- * 'atSuggestedDeletionIds'
--
-- * 'atTextStyle'
--
-- * 'atType'
autoText
    :: AutoText
autoText =
  AutoText'
    { _atSuggestedInsertionIds = Nothing
    , _atSuggestedTextStyleChanges = Nothing
    , _atSuggestedDeletionIds = Nothing
    , _atTextStyle = Nothing
    , _atType = Nothing
    }


-- | The suggested insertion IDs. An AutoText may have multiple insertion IDs
-- if it is a nested suggested change. If empty, then this is not a
-- suggested insertion.
atSuggestedInsertionIds :: Lens' AutoText [Text]
atSuggestedInsertionIds
  = lens _atSuggestedInsertionIds
      (\ s a -> s{_atSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The suggested text style changes to this AutoText, keyed by suggestion
-- ID.
atSuggestedTextStyleChanges :: Lens' AutoText (Maybe AutoTextSuggestedTextStyleChanges)
atSuggestedTextStyleChanges
  = lens _atSuggestedTextStyleChanges
      (\ s a -> s{_atSuggestedTextStyleChanges = a})

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
atSuggestedDeletionIds :: Lens' AutoText [Text]
atSuggestedDeletionIds
  = lens _atSuggestedDeletionIds
      (\ s a -> s{_atSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The text style of this AutoText.
atTextStyle :: Lens' AutoText (Maybe TextStyle)
atTextStyle
  = lens _atTextStyle (\ s a -> s{_atTextStyle = a})

-- | The type of this auto text.
atType :: Lens' AutoText (Maybe AutoTextType)
atType = lens _atType (\ s a -> s{_atType = a})

instance FromJSON AutoText where
        parseJSON
          = withObject "AutoText"
              (\ o ->
                 AutoText' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "suggestedTextStyleChanges")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "textStyle")
                     <*> (o .:? "type"))

instance ToJSON AutoText where
        toJSON AutoText'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _atSuggestedInsertionIds,
                  ("suggestedTextStyleChanges" .=) <$>
                    _atSuggestedTextStyleChanges,
                  ("suggestedDeletionIds" .=) <$>
                    _atSuggestedDeletionIds,
                  ("textStyle" .=) <$> _atTextStyle,
                  ("type" .=) <$> _atType])

-- | Creates a Header. The new header is applied to the SectionStyle at the
-- location of the SectionBreak if specificed, otherwise it is applied to
-- the DocumentStyle. If a header of the specified type already exists, a
-- 400 bad request error is returned.
--
-- /See:/ 'createHeaderRequest' smart constructor.
data CreateHeaderRequest =
  CreateHeaderRequest'
    { _chrSectionBreakLocation :: !(Maybe Location)
    , _chrType :: !(Maybe CreateHeaderRequestType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateHeaderRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chrSectionBreakLocation'
--
-- * 'chrType'
createHeaderRequest
    :: CreateHeaderRequest
createHeaderRequest =
  CreateHeaderRequest' {_chrSectionBreakLocation = Nothing, _chrType = Nothing}


-- | The location of the SectionBreak which begins the section this header
-- should belong to. If \`section_break_location\' is unset or if it refers
-- to the first section break in the document body, the header applies to
-- the DocumentStyle
chrSectionBreakLocation :: Lens' CreateHeaderRequest (Maybe Location)
chrSectionBreakLocation
  = lens _chrSectionBreakLocation
      (\ s a -> s{_chrSectionBreakLocation = a})

-- | The type of header to create.
chrType :: Lens' CreateHeaderRequest (Maybe CreateHeaderRequestType)
chrType = lens _chrType (\ s a -> s{_chrType = a})

instance FromJSON CreateHeaderRequest where
        parseJSON
          = withObject "CreateHeaderRequest"
              (\ o ->
                 CreateHeaderRequest' <$>
                   (o .:? "sectionBreakLocation") <*> (o .:? "type"))

instance ToJSON CreateHeaderRequest where
        toJSON CreateHeaderRequest'{..}
          = object
              (catMaybes
                 [("sectionBreakLocation" .=) <$>
                    _chrSectionBreakLocation,
                  ("type" .=) <$> _chrType])

-- | A List represents the list attributes for a group of paragraphs that all
-- belong to the same list. A paragraph that is part of a list has a
-- reference to the list\'s ID in its bullet.
--
-- /See:/ 'list' smart constructor.
data List =
  List'
    { _lSuggestedInsertionId :: !(Maybe Text)
    , _lSuggestedListPropertiesChanges :: !(Maybe ListSuggestedListPropertiesChanges)
    , _lSuggestedDeletionIds :: !(Maybe [Text])
    , _lListProperties :: !(Maybe ListProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'List' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lSuggestedInsertionId'
--
-- * 'lSuggestedListPropertiesChanges'
--
-- * 'lSuggestedDeletionIds'
--
-- * 'lListProperties'
list
    :: List
list =
  List'
    { _lSuggestedInsertionId = Nothing
    , _lSuggestedListPropertiesChanges = Nothing
    , _lSuggestedDeletionIds = Nothing
    , _lListProperties = Nothing
    }


-- | The suggested insertion ID. If empty, then this is not a suggested
-- insertion.
lSuggestedInsertionId :: Lens' List (Maybe Text)
lSuggestedInsertionId
  = lens _lSuggestedInsertionId
      (\ s a -> s{_lSuggestedInsertionId = a})

-- | The suggested changes to the list properties, keyed by suggestion ID.
lSuggestedListPropertiesChanges :: Lens' List (Maybe ListSuggestedListPropertiesChanges)
lSuggestedListPropertiesChanges
  = lens _lSuggestedListPropertiesChanges
      (\ s a -> s{_lSuggestedListPropertiesChanges = a})

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this list.
lSuggestedDeletionIds :: Lens' List [Text]
lSuggestedDeletionIds
  = lens _lSuggestedDeletionIds
      (\ s a -> s{_lSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The properties of the list.
lListProperties :: Lens' List (Maybe ListProperties)
lListProperties
  = lens _lListProperties
      (\ s a -> s{_lListProperties = a})

instance FromJSON List where
        parseJSON
          = withObject "List"
              (\ o ->
                 List' <$>
                   (o .:? "suggestedInsertionId") <*>
                     (o .:? "suggestedListPropertiesChanges")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "listProperties"))

instance ToJSON List where
        toJSON List'{..}
          = object
              (catMaybes
                 [("suggestedInsertionId" .=) <$>
                    _lSuggestedInsertionId,
                  ("suggestedListPropertiesChanges" .=) <$>
                    _lSuggestedListPropertiesChanges,
                  ("suggestedDeletionIds" .=) <$>
                    _lSuggestedDeletionIds,
                  ("listProperties" .=) <$> _lListProperties])

-- | A border around a paragraph.
--
-- /See:/ 'paragraphBOrder' smart constructor.
data ParagraphBOrder =
  ParagraphBOrder'
    { _pboColor :: !(Maybe OptionalColor)
    , _pboWidth :: !(Maybe Dimension)
    , _pboDashStyle :: !(Maybe ParagraphBOrderDashStyle)
    , _pboPadding :: !(Maybe Dimension)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParagraphBOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pboColor'
--
-- * 'pboWidth'
--
-- * 'pboDashStyle'
--
-- * 'pboPadding'
paragraphBOrder
    :: ParagraphBOrder
paragraphBOrder =
  ParagraphBOrder'
    { _pboColor = Nothing
    , _pboWidth = Nothing
    , _pboDashStyle = Nothing
    , _pboPadding = Nothing
    }


-- | The color of the border.
pboColor :: Lens' ParagraphBOrder (Maybe OptionalColor)
pboColor = lens _pboColor (\ s a -> s{_pboColor = a})

-- | The width of the border.
pboWidth :: Lens' ParagraphBOrder (Maybe Dimension)
pboWidth = lens _pboWidth (\ s a -> s{_pboWidth = a})

-- | The dash style of the border.
pboDashStyle :: Lens' ParagraphBOrder (Maybe ParagraphBOrderDashStyle)
pboDashStyle
  = lens _pboDashStyle (\ s a -> s{_pboDashStyle = a})

-- | The padding of the border.
pboPadding :: Lens' ParagraphBOrder (Maybe Dimension)
pboPadding
  = lens _pboPadding (\ s a -> s{_pboPadding = a})

instance FromJSON ParagraphBOrder where
        parseJSON
          = withObject "ParagraphBOrder"
              (\ o ->
                 ParagraphBOrder' <$>
                   (o .:? "color") <*> (o .:? "width") <*>
                     (o .:? "dashStyle")
                     <*> (o .:? "padding"))

instance ToJSON ParagraphBOrder where
        toJSON ParagraphBOrder'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _pboColor,
                  ("width" .=) <$> _pboWidth,
                  ("dashStyle" .=) <$> _pboDashStyle,
                  ("padding" .=) <$> _pboPadding])

-- | A suggested change to a TableCellStyle.
--
-- /See:/ 'suggestedTableCellStyle' smart constructor.
data SuggestedTableCellStyle =
  SuggestedTableCellStyle'
    { _stcsTableCellStyleSuggestionState :: !(Maybe TableCellStyleSuggestionState)
    , _stcsTableCellStyle :: !(Maybe TableCellStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestedTableCellStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stcsTableCellStyleSuggestionState'
--
-- * 'stcsTableCellStyle'
suggestedTableCellStyle
    :: SuggestedTableCellStyle
suggestedTableCellStyle =
  SuggestedTableCellStyle'
    { _stcsTableCellStyleSuggestionState = Nothing
    , _stcsTableCellStyle = Nothing
    }


-- | A mask that indicates which of the fields on the base TableCellStyle
-- have been changed in this suggestion.
stcsTableCellStyleSuggestionState :: Lens' SuggestedTableCellStyle (Maybe TableCellStyleSuggestionState)
stcsTableCellStyleSuggestionState
  = lens _stcsTableCellStyleSuggestionState
      (\ s a -> s{_stcsTableCellStyleSuggestionState = a})

-- | A TableCellStyle that only includes the changes made in this suggestion.
-- This can be used along with the table_cell_style_suggestion_state to see
-- which fields have changed and their new values.
stcsTableCellStyle :: Lens' SuggestedTableCellStyle (Maybe TableCellStyle)
stcsTableCellStyle
  = lens _stcsTableCellStyle
      (\ s a -> s{_stcsTableCellStyle = a})

instance FromJSON SuggestedTableCellStyle where
        parseJSON
          = withObject "SuggestedTableCellStyle"
              (\ o ->
                 SuggestedTableCellStyle' <$>
                   (o .:? "tableCellStyleSuggestionState") <*>
                     (o .:? "tableCellStyle"))

instance ToJSON SuggestedTableCellStyle where
        toJSON SuggestedTableCellStyle'{..}
          = object
              (catMaybes
                 [("tableCellStyleSuggestionState" .=) <$>
                    _stcsTableCellStyleSuggestionState,
                  ("tableCellStyle" .=) <$> _stcsTableCellStyle])

-- | The result of inserting an inline image.
--
-- /See:/ 'insertInlineImageResponse' smart constructor.
newtype InsertInlineImageResponse =
  InsertInlineImageResponse'
    { _iiirObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InsertInlineImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiirObjectId'
insertInlineImageResponse
    :: InsertInlineImageResponse
insertInlineImageResponse = InsertInlineImageResponse' {_iiirObjectId = Nothing}


-- | The ID of the created InlineObject.
iiirObjectId :: Lens' InsertInlineImageResponse (Maybe Text)
iiirObjectId
  = lens _iiirObjectId (\ s a -> s{_iiirObjectId = a})

instance FromJSON InsertInlineImageResponse where
        parseJSON
          = withObject "InsertInlineImageResponse"
              (\ o ->
                 InsertInlineImageResponse' <$> (o .:? "objectId"))

instance ToJSON InsertInlineImageResponse where
        toJSON InsertInlineImageResponse'{..}
          = object
              (catMaybes [("objectId" .=) <$> _iiirObjectId])

-- | An RGB color.
--
-- /See:/ 'rgbColor' smart constructor.
data RgbColor =
  RgbColor'
    { _rcRed :: !(Maybe (Textual Double))
    , _rcGreen :: !(Maybe (Textual Double))
    , _rcBlue :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RgbColor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcRed'
--
-- * 'rcGreen'
--
-- * 'rcBlue'
rgbColor
    :: RgbColor
rgbColor = RgbColor' {_rcRed = Nothing, _rcGreen = Nothing, _rcBlue = Nothing}


-- | The red component of the color, from 0.0 to 1.0.
rcRed :: Lens' RgbColor (Maybe Double)
rcRed
  = lens _rcRed (\ s a -> s{_rcRed = a}) .
      mapping _Coerce

-- | The green component of the color, from 0.0 to 1.0.
rcGreen :: Lens' RgbColor (Maybe Double)
rcGreen
  = lens _rcGreen (\ s a -> s{_rcGreen = a}) .
      mapping _Coerce

-- | The blue component of the color, from 0.0 to 1.0.
rcBlue :: Lens' RgbColor (Maybe Double)
rcBlue
  = lens _rcBlue (\ s a -> s{_rcBlue = a}) .
      mapping _Coerce

instance FromJSON RgbColor where
        parseJSON
          = withObject "RgbColor"
              (\ o ->
                 RgbColor' <$>
                   (o .:? "red") <*> (o .:? "green") <*> (o .:? "blue"))

instance ToJSON RgbColor where
        toJSON RgbColor'{..}
          = object
              (catMaybes
                 [("red" .=) <$> _rcRed, ("green" .=) <$> _rcGreen,
                  ("blue" .=) <$> _rcBlue])

-- | Inserts a page break followed by a newline at the specified location.
--
-- /See:/ 'insertPageBreakRequest' smart constructor.
data InsertPageBreakRequest =
  InsertPageBreakRequest'
    { _ipbrLocation :: !(Maybe Location)
    , _ipbrEndOfSegmentLocation :: !(Maybe EndOfSegmentLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InsertPageBreakRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipbrLocation'
--
-- * 'ipbrEndOfSegmentLocation'
insertPageBreakRequest
    :: InsertPageBreakRequest
insertPageBreakRequest =
  InsertPageBreakRequest'
    {_ipbrLocation = Nothing, _ipbrEndOfSegmentLocation = Nothing}


-- | Inserts the page break at a specific index in the document. The page
-- break must be inserted inside the bounds of an existing Paragraph. For
-- instance, it cannot be inserted at a table\'s start index (i.e. between
-- the table and its preceding paragraph). Page breaks cannot be inserted
-- inside a table, equation, footnote, header or footer. Since page breaks
-- can only be inserted inside the body, the segment ID field must be
-- empty.
ipbrLocation :: Lens' InsertPageBreakRequest (Maybe Location)
ipbrLocation
  = lens _ipbrLocation (\ s a -> s{_ipbrLocation = a})

-- | Inserts the page break at the end of the document body. Page breaks
-- cannot be inserted inside a footnote, header or footer. Since page
-- breaks can only be inserted inside the body, the segment ID field must
-- be empty.
ipbrEndOfSegmentLocation :: Lens' InsertPageBreakRequest (Maybe EndOfSegmentLocation)
ipbrEndOfSegmentLocation
  = lens _ipbrEndOfSegmentLocation
      (\ s a -> s{_ipbrEndOfSegmentLocation = a})

instance FromJSON InsertPageBreakRequest where
        parseJSON
          = withObject "InsertPageBreakRequest"
              (\ o ->
                 InsertPageBreakRequest' <$>
                   (o .:? "location") <*>
                     (o .:? "endOfSegmentLocation"))

instance ToJSON InsertPageBreakRequest where
        toJSON InsertPageBreakRequest'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _ipbrLocation,
                  ("endOfSegmentLocation" .=) <$>
                    _ipbrEndOfSegmentLocation])

-- | The result of creating a footer.
--
-- /See:/ 'createFooterResponse' smart constructor.
newtype CreateFooterResponse =
  CreateFooterResponse'
    { _cfrFooterId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateFooterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfrFooterId'
createFooterResponse
    :: CreateFooterResponse
createFooterResponse = CreateFooterResponse' {_cfrFooterId = Nothing}


-- | The ID of the created footer.
cfrFooterId :: Lens' CreateFooterResponse (Maybe Text)
cfrFooterId
  = lens _cfrFooterId (\ s a -> s{_cfrFooterId = a})

instance FromJSON CreateFooterResponse where
        parseJSON
          = withObject "CreateFooterResponse"
              (\ o -> CreateFooterResponse' <$> (o .:? "footerId"))

instance ToJSON CreateFooterResponse where
        toJSON CreateFooterResponse'{..}
          = object
              (catMaybes [("footerId" .=) <$> _cfrFooterId])

-- | A mask that indicates which of the fields on the base Background have
-- been changed in this suggestion. For any field set to true, the
-- Backgound has a new suggested value.
--
-- /See:/ 'backgRoundSuggestionState' smart constructor.
newtype BackgRoundSuggestionState =
  BackgRoundSuggestionState'
    { _brssBackgRoundColorSuggested :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackgRoundSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brssBackgRoundColorSuggested'
backgRoundSuggestionState
    :: BackgRoundSuggestionState
backgRoundSuggestionState =
  BackgRoundSuggestionState' {_brssBackgRoundColorSuggested = Nothing}


-- | Indicates whether the current background color has been modified in this
-- suggestion.
brssBackgRoundColorSuggested :: Lens' BackgRoundSuggestionState (Maybe Bool)
brssBackgRoundColorSuggested
  = lens _brssBackgRoundColorSuggested
      (\ s a -> s{_brssBackgRoundColorSuggested = a})

instance FromJSON BackgRoundSuggestionState where
        parseJSON
          = withObject "BackgRoundSuggestionState"
              (\ o ->
                 BackgRoundSuggestionState' <$>
                   (o .:? "backgroundColorSuggested"))

instance ToJSON BackgRoundSuggestionState where
        toJSON BackgRoundSuggestionState'{..}
          = object
              (catMaybes
                 [("backgroundColorSuggested" .=) <$>
                    _brssBackgRoundColorSuggested])

-- | Properties of an InlineObject.
--
-- /See:/ 'inlineObjectProperties' smart constructor.
newtype InlineObjectProperties =
  InlineObjectProperties'
    { _iopEmbeddedObject :: Maybe EmbeddedObject
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InlineObjectProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iopEmbeddedObject'
inlineObjectProperties
    :: InlineObjectProperties
inlineObjectProperties = InlineObjectProperties' {_iopEmbeddedObject = Nothing}


-- | The embedded object of this inline object.
iopEmbeddedObject :: Lens' InlineObjectProperties (Maybe EmbeddedObject)
iopEmbeddedObject
  = lens _iopEmbeddedObject
      (\ s a -> s{_iopEmbeddedObject = a})

instance FromJSON InlineObjectProperties where
        parseJSON
          = withObject "InlineObjectProperties"
              (\ o ->
                 InlineObjectProperties' <$> (o .:? "embeddedObject"))

instance ToJSON InlineObjectProperties where
        toJSON InlineObjectProperties'{..}
          = object
              (catMaybes
                 [("embeddedObject" .=) <$> _iopEmbeddedObject])

-- | A suggested change to the DocumentStyle.
--
-- /See:/ 'suggestedDocumentStyle' smart constructor.
data SuggestedDocumentStyle =
  SuggestedDocumentStyle'
    { _sdsDocumentStyle :: !(Maybe DocumentStyle)
    , _sdsDocumentStyleSuggestionState :: !(Maybe DocumentStyleSuggestionState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestedDocumentStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdsDocumentStyle'
--
-- * 'sdsDocumentStyleSuggestionState'
suggestedDocumentStyle
    :: SuggestedDocumentStyle
suggestedDocumentStyle =
  SuggestedDocumentStyle'
    {_sdsDocumentStyle = Nothing, _sdsDocumentStyleSuggestionState = Nothing}


-- | A DocumentStyle that only includes the changes made in this suggestion.
-- This can be used along with the document_style_suggestion_state to see
-- which fields have changed and their new values.
sdsDocumentStyle :: Lens' SuggestedDocumentStyle (Maybe DocumentStyle)
sdsDocumentStyle
  = lens _sdsDocumentStyle
      (\ s a -> s{_sdsDocumentStyle = a})

-- | A mask that indicates which of the fields on the base DocumentStyle have
-- been changed in this suggestion.
sdsDocumentStyleSuggestionState :: Lens' SuggestedDocumentStyle (Maybe DocumentStyleSuggestionState)
sdsDocumentStyleSuggestionState
  = lens _sdsDocumentStyleSuggestionState
      (\ s a -> s{_sdsDocumentStyleSuggestionState = a})

instance FromJSON SuggestedDocumentStyle where
        parseJSON
          = withObject "SuggestedDocumentStyle"
              (\ o ->
                 SuggestedDocumentStyle' <$>
                   (o .:? "documentStyle") <*>
                     (o .:? "documentStyleSuggestionState"))

instance ToJSON SuggestedDocumentStyle where
        toJSON SuggestedDocumentStyle'{..}
          = object
              (catMaybes
                 [("documentStyle" .=) <$> _sdsDocumentStyle,
                  ("documentStyleSuggestionState" .=) <$>
                    _sdsDocumentStyleSuggestionState])

-- | A particular location in the document.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lIndex :: !(Maybe (Textual Int32))
    , _lSegmentId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lIndex'
--
-- * 'lSegmentId'
location
    :: Location
location = Location' {_lIndex = Nothing, _lSegmentId = Nothing}


-- | The zero-based index, in UTF-16 code units. The index is relative to the
-- beginning of the segment specified by segment_id.
lIndex :: Lens' Location (Maybe Int32)
lIndex
  = lens _lIndex (\ s a -> s{_lIndex = a}) .
      mapping _Coerce

-- | The ID of the header, footer or footnote the location is in. An empty
-- segment ID signifies the document\'s body.
lSegmentId :: Lens' Location (Maybe Text)
lSegmentId
  = lens _lSegmentId (\ s a -> s{_lSegmentId = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "index") <*> (o .:? "segmentId"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("index" .=) <$> _lIndex,
                  ("segmentId" .=) <$> _lSegmentId])

-- | A person or email address mentioned in a document. These mentions behave
-- as a single, immutable element containing the person\'s name or email
-- address.
--
-- /See:/ 'person' smart constructor.
data Person =
  Person'
    { _pSuggestedInsertionIds :: !(Maybe [Text])
    , _pSuggestedTextStyleChanges :: !(Maybe PersonSuggestedTextStyleChanges)
    , _pPersonProperties :: !(Maybe PersonProperties)
    , _pSuggestedDeletionIds :: !(Maybe [Text])
    , _pTextStyle :: !(Maybe TextStyle)
    , _pPersonId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Person' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pSuggestedInsertionIds'
--
-- * 'pSuggestedTextStyleChanges'
--
-- * 'pPersonProperties'
--
-- * 'pSuggestedDeletionIds'
--
-- * 'pTextStyle'
--
-- * 'pPersonId'
person
    :: Person
person =
  Person'
    { _pSuggestedInsertionIds = Nothing
    , _pSuggestedTextStyleChanges = Nothing
    , _pPersonProperties = Nothing
    , _pSuggestedDeletionIds = Nothing
    , _pTextStyle = Nothing
    , _pPersonId = Nothing
    }


-- | IDs for suggestions that insert this person link into the document. A
-- Person might have multiple insertion IDs if it is a nested suggested
-- change (a suggestion within a suggestion made by a different user, for
-- example). If empty, then this person link isn\'t a suggested insertion.
pSuggestedInsertionIds :: Lens' Person [Text]
pSuggestedInsertionIds
  = lens _pSuggestedInsertionIds
      (\ s a -> s{_pSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The suggested text style changes to this Person, keyed by suggestion ID.
pSuggestedTextStyleChanges :: Lens' Person (Maybe PersonSuggestedTextStyleChanges)
pSuggestedTextStyleChanges
  = lens _pSuggestedTextStyleChanges
      (\ s a -> s{_pSuggestedTextStyleChanges = a})

-- | Output only. The properties of this Person. This field is always
-- present.
pPersonProperties :: Lens' Person (Maybe PersonProperties)
pPersonProperties
  = lens _pPersonProperties
      (\ s a -> s{_pPersonProperties = a})

-- | IDs for suggestions that remove this person link from the document. A
-- Person might have multiple deletion IDs if, for example, multiple users
-- suggest to delete it. If empty, then this person link isn\'t suggested
-- for deletion.
pSuggestedDeletionIds :: Lens' Person [Text]
pSuggestedDeletionIds
  = lens _pSuggestedDeletionIds
      (\ s a -> s{_pSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The text style of this Person.
pTextStyle :: Lens' Person (Maybe TextStyle)
pTextStyle
  = lens _pTextStyle (\ s a -> s{_pTextStyle = a})

-- | Output only. The unique ID of this link.
pPersonId :: Lens' Person (Maybe Text)
pPersonId
  = lens _pPersonId (\ s a -> s{_pPersonId = a})

instance FromJSON Person where
        parseJSON
          = withObject "Person"
              (\ o ->
                 Person' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "suggestedTextStyleChanges")
                     <*> (o .:? "personProperties")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "textStyle")
                     <*> (o .:? "personId"))

instance ToJSON Person where
        toJSON Person'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _pSuggestedInsertionIds,
                  ("suggestedTextStyleChanges" .=) <$>
                    _pSuggestedTextStyleChanges,
                  ("personProperties" .=) <$> _pPersonProperties,
                  ("suggestedDeletionIds" .=) <$>
                    _pSuggestedDeletionIds,
                  ("textStyle" .=) <$> _pTextStyle,
                  ("personId" .=) <$> _pPersonId])

-- | A StructuralElement representing a table of contents.
--
-- /See:/ 'tableOfContents' smart constructor.
data TableOfContents =
  TableOfContents'
    { _tocSuggestedInsertionIds :: !(Maybe [Text])
    , _tocContent :: !(Maybe [StructuralElement])
    , _tocSuggestedDeletionIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableOfContents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tocSuggestedInsertionIds'
--
-- * 'tocContent'
--
-- * 'tocSuggestedDeletionIds'
tableOfContents
    :: TableOfContents
tableOfContents =
  TableOfContents'
    { _tocSuggestedInsertionIds = Nothing
    , _tocContent = Nothing
    , _tocSuggestedDeletionIds = Nothing
    }


-- | The suggested insertion IDs. A TableOfContents may have multiple
-- insertion IDs if it is a nested suggested change. If empty, then this is
-- not a suggested insertion.
tocSuggestedInsertionIds :: Lens' TableOfContents [Text]
tocSuggestedInsertionIds
  = lens _tocSuggestedInsertionIds
      (\ s a -> s{_tocSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The content of the table of contents.
tocContent :: Lens' TableOfContents [StructuralElement]
tocContent
  = lens _tocContent (\ s a -> s{_tocContent = a}) .
      _Default
      . _Coerce

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
tocSuggestedDeletionIds :: Lens' TableOfContents [Text]
tocSuggestedDeletionIds
  = lens _tocSuggestedDeletionIds
      (\ s a -> s{_tocSuggestedDeletionIds = a})
      . _Default
      . _Coerce

instance FromJSON TableOfContents where
        parseJSON
          = withObject "TableOfContents"
              (\ o ->
                 TableOfContents' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "content" .!= mempty)
                     <*> (o .:? "suggestedDeletionIds" .!= mempty))

instance ToJSON TableOfContents where
        toJSON TableOfContents'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _tocSuggestedInsertionIds,
                  ("content" .=) <$> _tocContent,
                  ("suggestedDeletionIds" .=) <$>
                    _tocSuggestedDeletionIds])

-- | A solid color.
--
-- /See:/ 'color' smart constructor.
newtype Color =
  Color'
    { _cRgbColor :: Maybe RgbColor
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Color' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cRgbColor'
color
    :: Color
color = Color' {_cRgbColor = Nothing}


-- | The RGB color value.
cRgbColor :: Lens' Color (Maybe RgbColor)
cRgbColor
  = lens _cRgbColor (\ s a -> s{_cRgbColor = a})

instance FromJSON Color where
        parseJSON
          = withObject "Color"
              (\ o -> Color' <$> (o .:? "rgbColor"))

instance ToJSON Color where
        toJSON Color'{..}
          = object (catMaybes [("rgbColor" .=) <$> _cRgbColor])

-- | A width and height.
--
-- /See:/ 'size' smart constructor.
data Size =
  Size'
    { _sHeight :: !(Maybe Dimension)
    , _sWidth :: !(Maybe Dimension)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Size' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sHeight'
--
-- * 'sWidth'
size
    :: Size
size = Size' {_sHeight = Nothing, _sWidth = Nothing}


-- | The height of the object.
sHeight :: Lens' Size (Maybe Dimension)
sHeight = lens _sHeight (\ s a -> s{_sHeight = a})

-- | The width of the object.
sWidth :: Lens' Size (Maybe Dimension)
sWidth = lens _sWidth (\ s a -> s{_sWidth = a})

instance FromJSON Size where
        parseJSON
          = withObject "Size"
              (\ o ->
                 Size' <$> (o .:? "height") <*> (o .:? "width"))

instance ToJSON Size where
        toJSON Size'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _sHeight,
                  ("width" .=) <$> _sWidth])

-- | The result of inserting an embedded Google Sheets chart.
--
-- /See:/ 'insertInlineSheetsChartResponse' smart constructor.
newtype InsertInlineSheetsChartResponse =
  InsertInlineSheetsChartResponse'
    { _iiscrObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InsertInlineSheetsChartResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiscrObjectId'
insertInlineSheetsChartResponse
    :: InsertInlineSheetsChartResponse
insertInlineSheetsChartResponse =
  InsertInlineSheetsChartResponse' {_iiscrObjectId = Nothing}


-- | The object ID of the inserted chart.
iiscrObjectId :: Lens' InsertInlineSheetsChartResponse (Maybe Text)
iiscrObjectId
  = lens _iiscrObjectId
      (\ s a -> s{_iiscrObjectId = a})

instance FromJSON InsertInlineSheetsChartResponse
         where
        parseJSON
          = withObject "InsertInlineSheetsChartResponse"
              (\ o ->
                 InsertInlineSheetsChartResponse' <$>
                   (o .:? "objectId"))

instance ToJSON InsertInlineSheetsChartResponse where
        toJSON InsertInlineSheetsChartResponse'{..}
          = object
              (catMaybes [("objectId" .=) <$> _iiscrObjectId])

-- | A mask that indicates which of the fields on the base TableRowStyle have
-- been changed in this suggestion. For any field set to true, there is a
-- new suggested value.
--
-- /See:/ 'tableRowStyleSuggestionState' smart constructor.
newtype TableRowStyleSuggestionState =
  TableRowStyleSuggestionState'
    { _trsssMinRowHeightSuggested :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableRowStyleSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trsssMinRowHeightSuggested'
tableRowStyleSuggestionState
    :: TableRowStyleSuggestionState
tableRowStyleSuggestionState =
  TableRowStyleSuggestionState' {_trsssMinRowHeightSuggested = Nothing}


-- | Indicates if there was a suggested change to min_row_height.
trsssMinRowHeightSuggested :: Lens' TableRowStyleSuggestionState (Maybe Bool)
trsssMinRowHeightSuggested
  = lens _trsssMinRowHeightSuggested
      (\ s a -> s{_trsssMinRowHeightSuggested = a})

instance FromJSON TableRowStyleSuggestionState where
        parseJSON
          = withObject "TableRowStyleSuggestionState"
              (\ o ->
                 TableRowStyleSuggestionState' <$>
                   (o .:? "minRowHeightSuggested"))

instance ToJSON TableRowStyleSuggestionState where
        toJSON TableRowStyleSuggestionState'{..}
          = object
              (catMaybes
                 [("minRowHeightSuggested" .=) <$>
                    _trsssMinRowHeightSuggested])

-- | Deletes a column from a table.
--
-- /See:/ 'deleteTableColumnRequest' smart constructor.
newtype DeleteTableColumnRequest =
  DeleteTableColumnRequest'
    { _dtcrTableCellLocation :: Maybe TableCellLocation
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteTableColumnRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtcrTableCellLocation'
deleteTableColumnRequest
    :: DeleteTableColumnRequest
deleteTableColumnRequest =
  DeleteTableColumnRequest' {_dtcrTableCellLocation = Nothing}


-- | The reference table cell location from which the column will be deleted.
-- The column this cell spans will be deleted. If this is a merged cell
-- that spans multiple columns, all columns that the cell spans will be
-- deleted. If no columns remain in the table after this deletion, the
-- whole table is deleted.
dtcrTableCellLocation :: Lens' DeleteTableColumnRequest (Maybe TableCellLocation)
dtcrTableCellLocation
  = lens _dtcrTableCellLocation
      (\ s a -> s{_dtcrTableCellLocation = a})

instance FromJSON DeleteTableColumnRequest where
        parseJSON
          = withObject "DeleteTableColumnRequest"
              (\ o ->
                 DeleteTableColumnRequest' <$>
                   (o .:? "tableCellLocation"))

instance ToJSON DeleteTableColumnRequest where
        toJSON DeleteTableColumnRequest'{..}
          = object
              (catMaybes
                 [("tableCellLocation" .=) <$>
                    _dtcrTableCellLocation])

-- | Output only. The named ranges in the document, keyed by name.
--
-- /See:/ 'documentNamedRanges' smart constructor.
newtype DocumentNamedRanges =
  DocumentNamedRanges'
    { _dnrAddtional :: HashMap Text NamedRanges
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentNamedRanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnrAddtional'
documentNamedRanges
    :: HashMap Text NamedRanges -- ^ 'dnrAddtional'
    -> DocumentNamedRanges
documentNamedRanges pDnrAddtional_ =
  DocumentNamedRanges' {_dnrAddtional = _Coerce # pDnrAddtional_}


dnrAddtional :: Lens' DocumentNamedRanges (HashMap Text NamedRanges)
dnrAddtional
  = lens _dnrAddtional (\ s a -> s{_dnrAddtional = a})
      . _Coerce

instance FromJSON DocumentNamedRanges where
        parseJSON
          = withObject "DocumentNamedRanges"
              (\ o -> DocumentNamedRanges' <$> (parseJSONObject o))

instance ToJSON DocumentNamedRanges where
        toJSON = toJSON . _dnrAddtional

-- | Location at the end of a body, header, footer or footnote. The location
-- is immediately before the last newline in the document segment.
--
-- /See:/ 'endOfSegmentLocation' smart constructor.
newtype EndOfSegmentLocation =
  EndOfSegmentLocation'
    { _eoslSegmentId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EndOfSegmentLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eoslSegmentId'
endOfSegmentLocation
    :: EndOfSegmentLocation
endOfSegmentLocation = EndOfSegmentLocation' {_eoslSegmentId = Nothing}


-- | The ID of the header, footer or footnote the location is in. An empty
-- segment ID signifies the document\'s body.
eoslSegmentId :: Lens' EndOfSegmentLocation (Maybe Text)
eoslSegmentId
  = lens _eoslSegmentId
      (\ s a -> s{_eoslSegmentId = a})

instance FromJSON EndOfSegmentLocation where
        parseJSON
          = withObject "EndOfSegmentLocation"
              (\ o ->
                 EndOfSegmentLocation' <$> (o .:? "segmentId"))

instance ToJSON EndOfSegmentLocation where
        toJSON EndOfSegmentLocation'{..}
          = object
              (catMaybes [("segmentId" .=) <$> _eoslSegmentId])

-- | Output only. The inline objects in the document, keyed by object ID.
--
-- /See:/ 'documentInlineObjects' smart constructor.
newtype DocumentInlineObjects =
  DocumentInlineObjects'
    { _dioAddtional :: HashMap Text InlineObject
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentInlineObjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dioAddtional'
documentInlineObjects
    :: HashMap Text InlineObject -- ^ 'dioAddtional'
    -> DocumentInlineObjects
documentInlineObjects pDioAddtional_ =
  DocumentInlineObjects' {_dioAddtional = _Coerce # pDioAddtional_}


dioAddtional :: Lens' DocumentInlineObjects (HashMap Text InlineObject)
dioAddtional
  = lens _dioAddtional (\ s a -> s{_dioAddtional = a})
      . _Coerce

instance FromJSON DocumentInlineObjects where
        parseJSON
          = withObject "DocumentInlineObjects"
              (\ o ->
                 DocumentInlineObjects' <$> (parseJSONObject o))

instance ToJSON DocumentInlineObjects where
        toJSON = toJSON . _dioAddtional

-- | The IDs of the positioned objects that are suggested to be attached to
-- this paragraph, keyed by suggestion ID.
--
-- /See:/ 'paragraphSuggestedPositionedObjectIds' smart constructor.
newtype ParagraphSuggestedPositionedObjectIds =
  ParagraphSuggestedPositionedObjectIds'
    { _pspoiAddtional :: HashMap Text ObjectReferences
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParagraphSuggestedPositionedObjectIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pspoiAddtional'
paragraphSuggestedPositionedObjectIds
    :: HashMap Text ObjectReferences -- ^ 'pspoiAddtional'
    -> ParagraphSuggestedPositionedObjectIds
paragraphSuggestedPositionedObjectIds pPspoiAddtional_ =
  ParagraphSuggestedPositionedObjectIds'
    {_pspoiAddtional = _Coerce # pPspoiAddtional_}


pspoiAddtional :: Lens' ParagraphSuggestedPositionedObjectIds (HashMap Text ObjectReferences)
pspoiAddtional
  = lens _pspoiAddtional
      (\ s a -> s{_pspoiAddtional = a})
      . _Coerce

instance FromJSON
           ParagraphSuggestedPositionedObjectIds
         where
        parseJSON
          = withObject "ParagraphSuggestedPositionedObjectIds"
              (\ o ->
                 ParagraphSuggestedPositionedObjectIds' <$>
                   (parseJSONObject o))

instance ToJSON ParagraphSuggestedPositionedObjectIds
         where
        toJSON = toJSON . _pspoiAddtional

-- | Inserts a section break at the given location. A newline character will
-- be inserted before the section break.
--
-- /See:/ 'insertSectionBreakRequest' smart constructor.
data InsertSectionBreakRequest =
  InsertSectionBreakRequest'
    { _isbrLocation :: !(Maybe Location)
    , _isbrEndOfSegmentLocation :: !(Maybe EndOfSegmentLocation)
    , _isbrSectionType :: !(Maybe InsertSectionBreakRequestSectionType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InsertSectionBreakRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isbrLocation'
--
-- * 'isbrEndOfSegmentLocation'
--
-- * 'isbrSectionType'
insertSectionBreakRequest
    :: InsertSectionBreakRequest
insertSectionBreakRequest =
  InsertSectionBreakRequest'
    { _isbrLocation = Nothing
    , _isbrEndOfSegmentLocation = Nothing
    , _isbrSectionType = Nothing
    }


-- | Inserts a newline and a section break at a specific index in the
-- document. The section break must be inserted inside the bounds of an
-- existing Paragraph. For instance, it cannot be inserted at a table\'s
-- start index (i.e. between the table and its preceding paragraph).
-- Section breaks cannot be inserted inside a table, equation, footnote,
-- header, or footer. Since section breaks can only be inserted inside the
-- body, the segment ID field must be empty.
isbrLocation :: Lens' InsertSectionBreakRequest (Maybe Location)
isbrLocation
  = lens _isbrLocation (\ s a -> s{_isbrLocation = a})

-- | Inserts a newline and a section break at the end of the document body.
-- Section breaks cannot be inserted inside a footnote, header or footer.
-- Because section breaks can only be inserted inside the body, the segment
-- ID field must be empty.
isbrEndOfSegmentLocation :: Lens' InsertSectionBreakRequest (Maybe EndOfSegmentLocation)
isbrEndOfSegmentLocation
  = lens _isbrEndOfSegmentLocation
      (\ s a -> s{_isbrEndOfSegmentLocation = a})

-- | The type of section to insert.
isbrSectionType :: Lens' InsertSectionBreakRequest (Maybe InsertSectionBreakRequestSectionType)
isbrSectionType
  = lens _isbrSectionType
      (\ s a -> s{_isbrSectionType = a})

instance FromJSON InsertSectionBreakRequest where
        parseJSON
          = withObject "InsertSectionBreakRequest"
              (\ o ->
                 InsertSectionBreakRequest' <$>
                   (o .:? "location") <*> (o .:? "endOfSegmentLocation")
                     <*> (o .:? "sectionType"))

instance ToJSON InsertSectionBreakRequest where
        toJSON InsertSectionBreakRequest'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _isbrLocation,
                  ("endOfSegmentLocation" .=) <$>
                    _isbrEndOfSegmentLocation,
                  ("sectionType" .=) <$> _isbrSectionType])

-- | A reference to another portion of a document or an external URL
-- resource.
--
-- /See:/ 'link' smart constructor.
data Link =
  Link'
    { _lURL :: !(Maybe Text)
    , _lHeadingId :: !(Maybe Text)
    , _lBookmarkId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Link' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lURL'
--
-- * 'lHeadingId'
--
-- * 'lBookmarkId'
link
    :: Link
link = Link' {_lURL = Nothing, _lHeadingId = Nothing, _lBookmarkId = Nothing}


-- | An external URL.
lURL :: Lens' Link (Maybe Text)
lURL = lens _lURL (\ s a -> s{_lURL = a})

-- | The ID of a heading in this document.
lHeadingId :: Lens' Link (Maybe Text)
lHeadingId
  = lens _lHeadingId (\ s a -> s{_lHeadingId = a})

-- | The ID of a bookmark in this document.
lBookmarkId :: Lens' Link (Maybe Text)
lBookmarkId
  = lens _lBookmarkId (\ s a -> s{_lBookmarkId = a})

instance FromJSON Link where
        parseJSON
          = withObject "Link"
              (\ o ->
                 Link' <$>
                   (o .:? "url") <*> (o .:? "headingId") <*>
                     (o .:? "bookmarkId"))

instance ToJSON Link where
        toJSON Link'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _lURL,
                  ("headingId" .=) <$> _lHeadingId,
                  ("bookmarkId" .=) <$> _lBookmarkId])

-- | The suggested text style changes to this AutoText, keyed by suggestion
-- ID.
--
-- /See:/ 'autoTextSuggestedTextStyleChanges' smart constructor.
newtype AutoTextSuggestedTextStyleChanges =
  AutoTextSuggestedTextStyleChanges'
    { _atstscAddtional :: HashMap Text SuggestedTextStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoTextSuggestedTextStyleChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atstscAddtional'
autoTextSuggestedTextStyleChanges
    :: HashMap Text SuggestedTextStyle -- ^ 'atstscAddtional'
    -> AutoTextSuggestedTextStyleChanges
autoTextSuggestedTextStyleChanges pAtstscAddtional_ =
  AutoTextSuggestedTextStyleChanges'
    {_atstscAddtional = _Coerce # pAtstscAddtional_}


atstscAddtional :: Lens' AutoTextSuggestedTextStyleChanges (HashMap Text SuggestedTextStyle)
atstscAddtional
  = lens _atstscAddtional
      (\ s a -> s{_atstscAddtional = a})
      . _Coerce

instance FromJSON AutoTextSuggestedTextStyleChanges
         where
        parseJSON
          = withObject "AutoTextSuggestedTextStyleChanges"
              (\ o ->
                 AutoTextSuggestedTextStyleChanges' <$>
                   (parseJSONObject o))

instance ToJSON AutoTextSuggestedTextStyleChanges
         where
        toJSON = toJSON . _atstscAddtional

-- | Inserts an InlineObject containing an image at the given location.
--
-- /See:/ 'insertInlineImageRequest' smart constructor.
data InsertInlineImageRequest =
  InsertInlineImageRequest'
    { _iiirLocation :: !(Maybe Location)
    , _iiirEndOfSegmentLocation :: !(Maybe EndOfSegmentLocation)
    , _iiirURI :: !(Maybe Text)
    , _iiirObjectSize :: !(Maybe Size)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InsertInlineImageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiirLocation'
--
-- * 'iiirEndOfSegmentLocation'
--
-- * 'iiirURI'
--
-- * 'iiirObjectSize'
insertInlineImageRequest
    :: InsertInlineImageRequest
insertInlineImageRequest =
  InsertInlineImageRequest'
    { _iiirLocation = Nothing
    , _iiirEndOfSegmentLocation = Nothing
    , _iiirURI = Nothing
    , _iiirObjectSize = Nothing
    }


-- | Inserts the image at a specific index in the document. The image must be
-- inserted inside the bounds of an existing Paragraph. For instance, it
-- cannot be inserted at a table\'s start index (i.e. between the table and
-- its preceding paragraph). Inline images cannot be inserted inside a
-- footnote or equation.
iiirLocation :: Lens' InsertInlineImageRequest (Maybe Location)
iiirLocation
  = lens _iiirLocation (\ s a -> s{_iiirLocation = a})

-- | Inserts the text at the end of a header, footer or the document body.
-- Inline images cannot be inserted inside a footnote.
iiirEndOfSegmentLocation :: Lens' InsertInlineImageRequest (Maybe EndOfSegmentLocation)
iiirEndOfSegmentLocation
  = lens _iiirEndOfSegmentLocation
      (\ s a -> s{_iiirEndOfSegmentLocation = a})

-- | The image URI. The image is fetched once at insertion time and a copy is
-- stored for display inside the document. Images must be less than 50MB in
-- size, cannot exceed 25 megapixels, and must be in one of PNG, JPEG, or
-- GIF format. The provided URI can be at most 2 kB in length. The URI
-- itself is saved with the image, and exposed via the
-- ImageProperties.content_uri field.
iiirURI :: Lens' InsertInlineImageRequest (Maybe Text)
iiirURI = lens _iiirURI (\ s a -> s{_iiirURI = a})

-- | The size that the image should appear as in the document. This property
-- is optional and the final size of the image in the document is
-- determined by the following rules: * If neither width nor height is
-- specified, then a default size of the image is calculated based on its
-- resolution. * If one dimension is specified then the other dimension is
-- calculated to preserve the aspect ratio of the image. * If both width
-- and height are specified, the image is scaled to fit within the provided
-- dimensions while maintaining its aspect ratio.
iiirObjectSize :: Lens' InsertInlineImageRequest (Maybe Size)
iiirObjectSize
  = lens _iiirObjectSize
      (\ s a -> s{_iiirObjectSize = a})

instance FromJSON InsertInlineImageRequest where
        parseJSON
          = withObject "InsertInlineImageRequest"
              (\ o ->
                 InsertInlineImageRequest' <$>
                   (o .:? "location") <*> (o .:? "endOfSegmentLocation")
                     <*> (o .:? "uri")
                     <*> (o .:? "objectSize"))

instance ToJSON InsertInlineImageRequest where
        toJSON InsertInlineImageRequest'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _iiirLocation,
                  ("endOfSegmentLocation" .=) <$>
                    _iiirEndOfSegmentLocation,
                  ("uri" .=) <$> _iiirURI,
                  ("objectSize" .=) <$> _iiirObjectSize])

-- | A magnitude in a single direction in the specified units.
--
-- /See:/ 'dimension' smart constructor.
data Dimension =
  Dimension'
    { _dMagnitude :: !(Maybe (Textual Double))
    , _dUnit :: !(Maybe DimensionUnit)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Dimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dMagnitude'
--
-- * 'dUnit'
dimension
    :: Dimension
dimension = Dimension' {_dMagnitude = Nothing, _dUnit = Nothing}


-- | The magnitude.
dMagnitude :: Lens' Dimension (Maybe Double)
dMagnitude
  = lens _dMagnitude (\ s a -> s{_dMagnitude = a}) .
      mapping _Coerce

-- | The units for magnitude.
dUnit :: Lens' Dimension (Maybe DimensionUnit)
dUnit = lens _dUnit (\ s a -> s{_dUnit = a})

instance FromJSON Dimension where
        parseJSON
          = withObject "Dimension"
              (\ o ->
                 Dimension' <$>
                   (o .:? "magnitude") <*> (o .:? "unit"))

instance ToJSON Dimension where
        toJSON Dimension'{..}
          = object
              (catMaybes
                 [("magnitude" .=) <$> _dMagnitude,
                  ("unit" .=) <$> _dUnit])

-- | The style of the document.
--
-- /See:/ 'documentStyle' smart constructor.
data DocumentStyle =
  DocumentStyle'
    { _dsUseCustomHeaderFooterMargins :: !(Maybe Bool)
    , _dsMarginTop :: !(Maybe Dimension)
    , _dsDefaultFooterId :: !(Maybe Text)
    , _dsFirstPageHeaderId :: !(Maybe Text)
    , _dsMarginFooter :: !(Maybe Dimension)
    , _dsMarginHeader :: !(Maybe Dimension)
    , _dsFirstPageFooterId :: !(Maybe Text)
    , _dsDefaultHeaderId :: !(Maybe Text)
    , _dsUseEvenPageHeaderFooter :: !(Maybe Bool)
    , _dsMarginLeft :: !(Maybe Dimension)
    , _dsPageNumberStart :: !(Maybe (Textual Int32))
    , _dsUseFirstPageHeaderFooter :: !(Maybe Bool)
    , _dsEvenPageFooterId :: !(Maybe Text)
    , _dsPageSize :: !(Maybe Size)
    , _dsBackgRound :: !(Maybe BackgRound)
    , _dsMarginRight :: !(Maybe Dimension)
    , _dsMarginBottom :: !(Maybe Dimension)
    , _dsEvenPageHeaderId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsUseCustomHeaderFooterMargins'
--
-- * 'dsMarginTop'
--
-- * 'dsDefaultFooterId'
--
-- * 'dsFirstPageHeaderId'
--
-- * 'dsMarginFooter'
--
-- * 'dsMarginHeader'
--
-- * 'dsFirstPageFooterId'
--
-- * 'dsDefaultHeaderId'
--
-- * 'dsUseEvenPageHeaderFooter'
--
-- * 'dsMarginLeft'
--
-- * 'dsPageNumberStart'
--
-- * 'dsUseFirstPageHeaderFooter'
--
-- * 'dsEvenPageFooterId'
--
-- * 'dsPageSize'
--
-- * 'dsBackgRound'
--
-- * 'dsMarginRight'
--
-- * 'dsMarginBottom'
--
-- * 'dsEvenPageHeaderId'
documentStyle
    :: DocumentStyle
documentStyle =
  DocumentStyle'
    { _dsUseCustomHeaderFooterMargins = Nothing
    , _dsMarginTop = Nothing
    , _dsDefaultFooterId = Nothing
    , _dsFirstPageHeaderId = Nothing
    , _dsMarginFooter = Nothing
    , _dsMarginHeader = Nothing
    , _dsFirstPageFooterId = Nothing
    , _dsDefaultHeaderId = Nothing
    , _dsUseEvenPageHeaderFooter = Nothing
    , _dsMarginLeft = Nothing
    , _dsPageNumberStart = Nothing
    , _dsUseFirstPageHeaderFooter = Nothing
    , _dsEvenPageFooterId = Nothing
    , _dsPageSize = Nothing
    , _dsBackgRound = Nothing
    , _dsMarginRight = Nothing
    , _dsMarginBottom = Nothing
    , _dsEvenPageHeaderId = Nothing
    }


-- | Indicates whether DocumentStyle margin_header, SectionStyle
-- margin_header and DocumentStyle margin_footer, SectionStyle
-- margin_footer are respected. When false, the default values in the Docs
-- editor for header and footer margin are used. This property is
-- read-only.
dsUseCustomHeaderFooterMargins :: Lens' DocumentStyle (Maybe Bool)
dsUseCustomHeaderFooterMargins
  = lens _dsUseCustomHeaderFooterMargins
      (\ s a -> s{_dsUseCustomHeaderFooterMargins = a})

-- | The top page margin. Updating the top page margin on the document style
-- clears the top page margin on all section styles.
dsMarginTop :: Lens' DocumentStyle (Maybe Dimension)
dsMarginTop
  = lens _dsMarginTop (\ s a -> s{_dsMarginTop = a})

-- | The ID of the default footer. If not set, there is no default footer.
-- This property is read-only.
dsDefaultFooterId :: Lens' DocumentStyle (Maybe Text)
dsDefaultFooterId
  = lens _dsDefaultFooterId
      (\ s a -> s{_dsDefaultFooterId = a})

-- | The ID of the header used only for the first page. If not set then a
-- unique header for the first page does not exist. The value of
-- use_first_page_header_footer determines whether to use the
-- default_header_id or this value for the header on the first page. If not
-- set, there is no first page header. This property is read-only.
dsFirstPageHeaderId :: Lens' DocumentStyle (Maybe Text)
dsFirstPageHeaderId
  = lens _dsFirstPageHeaderId
      (\ s a -> s{_dsFirstPageHeaderId = a})

-- | The amount of space between the bottom of the page and the contents of
-- the footer.
dsMarginFooter :: Lens' DocumentStyle (Maybe Dimension)
dsMarginFooter
  = lens _dsMarginFooter
      (\ s a -> s{_dsMarginFooter = a})

-- | The amount of space between the top of the page and the contents of the
-- header.
dsMarginHeader :: Lens' DocumentStyle (Maybe Dimension)
dsMarginHeader
  = lens _dsMarginHeader
      (\ s a -> s{_dsMarginHeader = a})

-- | The ID of the footer used only for the first page. If not set then a
-- unique footer for the first page does not exist. The value of
-- use_first_page_header_footer determines whether to use the
-- default_footer_id or this value for the footer on the first page. If not
-- set, there is no first page footer. This property is read-only.
dsFirstPageFooterId :: Lens' DocumentStyle (Maybe Text)
dsFirstPageFooterId
  = lens _dsFirstPageFooterId
      (\ s a -> s{_dsFirstPageFooterId = a})

-- | The ID of the default header. If not set, there is no default header.
-- This property is read-only.
dsDefaultHeaderId :: Lens' DocumentStyle (Maybe Text)
dsDefaultHeaderId
  = lens _dsDefaultHeaderId
      (\ s a -> s{_dsDefaultHeaderId = a})

-- | Indicates whether to use the even page header \/ footer IDs for the even
-- pages.
dsUseEvenPageHeaderFooter :: Lens' DocumentStyle (Maybe Bool)
dsUseEvenPageHeaderFooter
  = lens _dsUseEvenPageHeaderFooter
      (\ s a -> s{_dsUseEvenPageHeaderFooter = a})

-- | The left page margin. Updating the left page margin on the document
-- style clears the left page margin on all section styles. It may also
-- cause columns to resize in all sections.
dsMarginLeft :: Lens' DocumentStyle (Maybe Dimension)
dsMarginLeft
  = lens _dsMarginLeft (\ s a -> s{_dsMarginLeft = a})

-- | The page number from which to start counting the number of pages.
dsPageNumberStart :: Lens' DocumentStyle (Maybe Int32)
dsPageNumberStart
  = lens _dsPageNumberStart
      (\ s a -> s{_dsPageNumberStart = a})
      . mapping _Coerce

-- | Indicates whether to use the first page header \/ footer IDs for the
-- first page.
dsUseFirstPageHeaderFooter :: Lens' DocumentStyle (Maybe Bool)
dsUseFirstPageHeaderFooter
  = lens _dsUseFirstPageHeaderFooter
      (\ s a -> s{_dsUseFirstPageHeaderFooter = a})

-- | The ID of the footer used only for even pages. The value of
-- use_even_page_header_footer determines whether to use the
-- default_footer_id or this value for the footer on even pages. If not
-- set, there is no even page footer. This property is read-only.
dsEvenPageFooterId :: Lens' DocumentStyle (Maybe Text)
dsEvenPageFooterId
  = lens _dsEvenPageFooterId
      (\ s a -> s{_dsEvenPageFooterId = a})

-- | The size of a page in the document.
dsPageSize :: Lens' DocumentStyle (Maybe Size)
dsPageSize
  = lens _dsPageSize (\ s a -> s{_dsPageSize = a})

-- | The background of the document. Documents cannot have a transparent
-- background color.
dsBackgRound :: Lens' DocumentStyle (Maybe BackgRound)
dsBackgRound
  = lens _dsBackgRound (\ s a -> s{_dsBackgRound = a})

-- | The right page margin. Updating the right page margin on the document
-- style clears the right page margin on all section styles. It may also
-- cause columns to resize in all sections.
dsMarginRight :: Lens' DocumentStyle (Maybe Dimension)
dsMarginRight
  = lens _dsMarginRight
      (\ s a -> s{_dsMarginRight = a})

-- | The bottom page margin. Updating the bottom page margin on the document
-- style clears the bottom page margin on all section styles.
dsMarginBottom :: Lens' DocumentStyle (Maybe Dimension)
dsMarginBottom
  = lens _dsMarginBottom
      (\ s a -> s{_dsMarginBottom = a})

-- | The ID of the header used only for even pages. The value of
-- use_even_page_header_footer determines whether to use the
-- default_header_id or this value for the header on even pages. If not
-- set, there is no even page header. This property is read-only.
dsEvenPageHeaderId :: Lens' DocumentStyle (Maybe Text)
dsEvenPageHeaderId
  = lens _dsEvenPageHeaderId
      (\ s a -> s{_dsEvenPageHeaderId = a})

instance FromJSON DocumentStyle where
        parseJSON
          = withObject "DocumentStyle"
              (\ o ->
                 DocumentStyle' <$>
                   (o .:? "useCustomHeaderFooterMargins") <*>
                     (o .:? "marginTop")
                     <*> (o .:? "defaultFooterId")
                     <*> (o .:? "firstPageHeaderId")
                     <*> (o .:? "marginFooter")
                     <*> (o .:? "marginHeader")
                     <*> (o .:? "firstPageFooterId")
                     <*> (o .:? "defaultHeaderId")
                     <*> (o .:? "useEvenPageHeaderFooter")
                     <*> (o .:? "marginLeft")
                     <*> (o .:? "pageNumberStart")
                     <*> (o .:? "useFirstPageHeaderFooter")
                     <*> (o .:? "evenPageFooterId")
                     <*> (o .:? "pageSize")
                     <*> (o .:? "background")
                     <*> (o .:? "marginRight")
                     <*> (o .:? "marginBottom")
                     <*> (o .:? "evenPageHeaderId"))

instance ToJSON DocumentStyle where
        toJSON DocumentStyle'{..}
          = object
              (catMaybes
                 [("useCustomHeaderFooterMargins" .=) <$>
                    _dsUseCustomHeaderFooterMargins,
                  ("marginTop" .=) <$> _dsMarginTop,
                  ("defaultFooterId" .=) <$> _dsDefaultFooterId,
                  ("firstPageHeaderId" .=) <$> _dsFirstPageHeaderId,
                  ("marginFooter" .=) <$> _dsMarginFooter,
                  ("marginHeader" .=) <$> _dsMarginHeader,
                  ("firstPageFooterId" .=) <$> _dsFirstPageFooterId,
                  ("defaultHeaderId" .=) <$> _dsDefaultHeaderId,
                  ("useEvenPageHeaderFooter" .=) <$>
                    _dsUseEvenPageHeaderFooter,
                  ("marginLeft" .=) <$> _dsMarginLeft,
                  ("pageNumberStart" .=) <$> _dsPageNumberStart,
                  ("useFirstPageHeaderFooter" .=) <$>
                    _dsUseFirstPageHeaderFooter,
                  ("evenPageFooterId" .=) <$> _dsEvenPageFooterId,
                  ("pageSize" .=) <$> _dsPageSize,
                  ("background" .=) <$> _dsBackgRound,
                  ("marginRight" .=) <$> _dsMarginRight,
                  ("marginBottom" .=) <$> _dsMarginBottom,
                  ("evenPageHeaderId" .=) <$> _dsEvenPageHeaderId])

-- | The document body. The body typically contains the full document
-- contents except for headers, footers and footnotes.
--
-- /See:/ 'body' smart constructor.
newtype Body =
  Body'
    { _bContent :: Maybe [StructuralElement]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Body' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bContent'
body
    :: Body
body = Body' {_bContent = Nothing}


-- | The contents of the body. The indexes for the body\'s content begin at
-- zero.
bContent :: Lens' Body [StructuralElement]
bContent
  = lens _bContent (\ s a -> s{_bContent = a}) .
      _Default
      . _Coerce

instance FromJSON Body where
        parseJSON
          = withObject "Body"
              (\ o -> Body' <$> (o .:? "content" .!= mempty))

instance ToJSON Body where
        toJSON Body'{..}
          = object (catMaybes [("content" .=) <$> _bContent])

-- | Updates the DocumentStyle.
--
-- /See:/ 'updateDocumentStyleRequest' smart constructor.
data UpdateDocumentStyleRequest =
  UpdateDocumentStyleRequest'
    { _udsrDocumentStyle :: !(Maybe DocumentStyle)
    , _udsrFields :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateDocumentStyleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsrDocumentStyle'
--
-- * 'udsrFields'
updateDocumentStyleRequest
    :: UpdateDocumentStyleRequest
updateDocumentStyleRequest =
  UpdateDocumentStyleRequest'
    {_udsrDocumentStyle = Nothing, _udsrFields = Nothing}


-- | The styles to set on the document. Certain document style changes may
-- cause other changes in order to mirror the behavior of the Docs editor.
-- See the documentation of DocumentStyle for more information.
udsrDocumentStyle :: Lens' UpdateDocumentStyleRequest (Maybe DocumentStyle)
udsrDocumentStyle
  = lens _udsrDocumentStyle
      (\ s a -> s{_udsrDocumentStyle = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`document_style\` is implied and should not be specified. A
-- single \`\"*\"\` can be used as short-hand for listing every field. For
-- example to update the background, set \`fields\` to \`\"background\"\`.
udsrFields :: Lens' UpdateDocumentStyleRequest (Maybe GFieldMask)
udsrFields
  = lens _udsrFields (\ s a -> s{_udsrFields = a})

instance FromJSON UpdateDocumentStyleRequest where
        parseJSON
          = withObject "UpdateDocumentStyleRequest"
              (\ o ->
                 UpdateDocumentStyleRequest' <$>
                   (o .:? "documentStyle") <*> (o .:? "fields"))

instance ToJSON UpdateDocumentStyleRequest where
        toJSON UpdateDocumentStyleRequest'{..}
          = object
              (catMaybes
                 [("documentStyle" .=) <$> _udsrDocumentStyle,
                  ("fields" .=) <$> _udsrFields])

-- | Creates a Footer. The new footer is applied to the SectionStyle at the
-- location of the SectionBreak if specificed, otherwise it is applied to
-- the DocumentStyle. If a footer of the specified type already exists, a
-- 400 bad request error is returned.
--
-- /See:/ 'createFooterRequest' smart constructor.
data CreateFooterRequest =
  CreateFooterRequest'
    { _cfrSectionBreakLocation :: !(Maybe Location)
    , _cfrType :: !(Maybe CreateFooterRequestType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateFooterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfrSectionBreakLocation'
--
-- * 'cfrType'
createFooterRequest
    :: CreateFooterRequest
createFooterRequest =
  CreateFooterRequest' {_cfrSectionBreakLocation = Nothing, _cfrType = Nothing}


-- | The location of the SectionBreak immediately preceding the section whose
-- SectionStyle this footer should belong to. If this is unset or refers to
-- the first section break in the document, the footer applies to the
-- document style.
cfrSectionBreakLocation :: Lens' CreateFooterRequest (Maybe Location)
cfrSectionBreakLocation
  = lens _cfrSectionBreakLocation
      (\ s a -> s{_cfrSectionBreakLocation = a})

-- | The type of footer to create.
cfrType :: Lens' CreateFooterRequest (Maybe CreateFooterRequestType)
cfrType = lens _cfrType (\ s a -> s{_cfrType = a})

instance FromJSON CreateFooterRequest where
        parseJSON
          = withObject "CreateFooterRequest"
              (\ o ->
                 CreateFooterRequest' <$>
                   (o .:? "sectionBreakLocation") <*> (o .:? "type"))

instance ToJSON CreateFooterRequest where
        toJSON CreateFooterRequest'{..}
          = object
              (catMaybes
                 [("sectionBreakLocation" .=) <$>
                    _cfrSectionBreakLocation,
                  ("type" .=) <$> _cfrType])

-- | A mask that indicates which of the fields on the base ListProperties
-- have been changed in this suggestion. For any field set to true, there
-- is a new suggested value.
--
-- /See:/ 'listPropertiesSuggestionState' smart constructor.
newtype ListPropertiesSuggestionState =
  ListPropertiesSuggestionState'
    { _lpssNestingLevelsSuggestionStates :: Maybe [NestingLevelSuggestionState]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListPropertiesSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpssNestingLevelsSuggestionStates'
listPropertiesSuggestionState
    :: ListPropertiesSuggestionState
listPropertiesSuggestionState =
  ListPropertiesSuggestionState' {_lpssNestingLevelsSuggestionStates = Nothing}


-- | A mask that indicates which of the fields on the corresponding
-- NestingLevel in nesting_levels have been changed in this suggestion. The
-- nesting level suggestion states are returned in ascending order of the
-- nesting level with the least nested returned first.
lpssNestingLevelsSuggestionStates :: Lens' ListPropertiesSuggestionState [NestingLevelSuggestionState]
lpssNestingLevelsSuggestionStates
  = lens _lpssNestingLevelsSuggestionStates
      (\ s a -> s{_lpssNestingLevelsSuggestionStates = a})
      . _Default
      . _Coerce

instance FromJSON ListPropertiesSuggestionState where
        parseJSON
          = withObject "ListPropertiesSuggestionState"
              (\ o ->
                 ListPropertiesSuggestionState' <$>
                   (o .:? "nestingLevelsSuggestionStates" .!= mempty))

instance ToJSON ListPropertiesSuggestionState where
        toJSON ListPropertiesSuggestionState'{..}
          = object
              (catMaybes
                 [("nestingLevelsSuggestionStates" .=) <$>
                    _lpssNestingLevelsSuggestionStates])

-- | The suggested changes to this paragraph\'s bullet.
--
-- /See:/ 'paragraphSuggestedBulletChanges' smart constructor.
newtype ParagraphSuggestedBulletChanges =
  ParagraphSuggestedBulletChanges'
    { _psbcAddtional :: HashMap Text SuggestedBullet
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParagraphSuggestedBulletChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psbcAddtional'
paragraphSuggestedBulletChanges
    :: HashMap Text SuggestedBullet -- ^ 'psbcAddtional'
    -> ParagraphSuggestedBulletChanges
paragraphSuggestedBulletChanges pPsbcAddtional_ =
  ParagraphSuggestedBulletChanges' {_psbcAddtional = _Coerce # pPsbcAddtional_}


psbcAddtional :: Lens' ParagraphSuggestedBulletChanges (HashMap Text SuggestedBullet)
psbcAddtional
  = lens _psbcAddtional
      (\ s a -> s{_psbcAddtional = a})
      . _Coerce

instance FromJSON ParagraphSuggestedBulletChanges
         where
        parseJSON
          = withObject "ParagraphSuggestedBulletChanges"
              (\ o ->
                 ParagraphSuggestedBulletChanges' <$>
                   (parseJSONObject o))

instance ToJSON ParagraphSuggestedBulletChanges where
        toJSON = toJSON . _psbcAddtional

-- | The result of creating a header.
--
-- /See:/ 'createHeaderResponse' smart constructor.
newtype CreateHeaderResponse =
  CreateHeaderResponse'
    { _chrHeaderId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateHeaderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chrHeaderId'
createHeaderResponse
    :: CreateHeaderResponse
createHeaderResponse = CreateHeaderResponse' {_chrHeaderId = Nothing}


-- | The ID of the created header.
chrHeaderId :: Lens' CreateHeaderResponse (Maybe Text)
chrHeaderId
  = lens _chrHeaderId (\ s a -> s{_chrHeaderId = a})

instance FromJSON CreateHeaderResponse where
        parseJSON
          = withObject "CreateHeaderResponse"
              (\ o -> CreateHeaderResponse' <$> (o .:? "headerId"))

instance ToJSON CreateHeaderResponse where
        toJSON CreateHeaderResponse'{..}
          = object
              (catMaybes [("headerId" .=) <$> _chrHeaderId])

-- | Updates the TableRowStyle of rows in a table.
--
-- /See:/ 'updateTableRowStyleRequest' smart constructor.
data UpdateTableRowStyleRequest =
  UpdateTableRowStyleRequest'
    { _utrsrRowIndices :: !(Maybe [Textual Int32])
    , _utrsrTableStartLocation :: !(Maybe Location)
    , _utrsrTableRowStyle :: !(Maybe TableRowStyle)
    , _utrsrFields :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateTableRowStyleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utrsrRowIndices'
--
-- * 'utrsrTableStartLocation'
--
-- * 'utrsrTableRowStyle'
--
-- * 'utrsrFields'
updateTableRowStyleRequest
    :: UpdateTableRowStyleRequest
updateTableRowStyleRequest =
  UpdateTableRowStyleRequest'
    { _utrsrRowIndices = Nothing
    , _utrsrTableStartLocation = Nothing
    , _utrsrTableRowStyle = Nothing
    , _utrsrFields = Nothing
    }


-- | The list of zero-based row indices whose style should be updated. If no
-- indices are specified, all rows will be updated.
utrsrRowIndices :: Lens' UpdateTableRowStyleRequest [Int32]
utrsrRowIndices
  = lens _utrsrRowIndices
      (\ s a -> s{_utrsrRowIndices = a})
      . _Default
      . _Coerce

-- | The location where the table starts in the document.
utrsrTableStartLocation :: Lens' UpdateTableRowStyleRequest (Maybe Location)
utrsrTableStartLocation
  = lens _utrsrTableStartLocation
      (\ s a -> s{_utrsrTableStartLocation = a})

-- | The styles to be set on the rows.
utrsrTableRowStyle :: Lens' UpdateTableRowStyleRequest (Maybe TableRowStyle)
utrsrTableRowStyle
  = lens _utrsrTableRowStyle
      (\ s a -> s{_utrsrTableRowStyle = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`tableRowStyle\` is implied and should not be specified. A
-- single \`\"*\"\` can be used as short-hand for listing every field. For
-- example to update the minimum row height, set \`fields\` to
-- \`\"min_row_height\"\`.
utrsrFields :: Lens' UpdateTableRowStyleRequest (Maybe GFieldMask)
utrsrFields
  = lens _utrsrFields (\ s a -> s{_utrsrFields = a})

instance FromJSON UpdateTableRowStyleRequest where
        parseJSON
          = withObject "UpdateTableRowStyleRequest"
              (\ o ->
                 UpdateTableRowStyleRequest' <$>
                   (o .:? "rowIndices" .!= mempty) <*>
                     (o .:? "tableStartLocation")
                     <*> (o .:? "tableRowStyle")
                     <*> (o .:? "fields"))

instance ToJSON UpdateTableRowStyleRequest where
        toJSON UpdateTableRowStyleRequest'{..}
          = object
              (catMaybes
                 [("rowIndices" .=) <$> _utrsrRowIndices,
                  ("tableStartLocation" .=) <$>
                    _utrsrTableStartLocation,
                  ("tableRowStyle" .=) <$> _utrsrTableRowStyle,
                  ("fields" .=) <$> _utrsrFields])

-- | A single response from an update.
--
-- /See:/ 'response' smart constructor.
data Response =
  Response'
    { _rReplaceAllText :: !(Maybe ReplaceAllTextResponse)
    , _rCreateNamedRange :: !(Maybe CreateNamedRangeResponse)
    , _rCreateHeader :: !(Maybe CreateHeaderResponse)
    , _rCreateFootNote :: !(Maybe CreateFootNoteResponse)
    , _rCreateFooter :: !(Maybe CreateFooterResponse)
    , _rInsertInlineImage :: !(Maybe InsertInlineImageResponse)
    , _rInsertInlineSheetsChart :: !(Maybe InsertInlineSheetsChartResponse)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Response' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rReplaceAllText'
--
-- * 'rCreateNamedRange'
--
-- * 'rCreateHeader'
--
-- * 'rCreateFootNote'
--
-- * 'rCreateFooter'
--
-- * 'rInsertInlineImage'
--
-- * 'rInsertInlineSheetsChart'
response
    :: Response
response =
  Response'
    { _rReplaceAllText = Nothing
    , _rCreateNamedRange = Nothing
    , _rCreateHeader = Nothing
    , _rCreateFootNote = Nothing
    , _rCreateFooter = Nothing
    , _rInsertInlineImage = Nothing
    , _rInsertInlineSheetsChart = Nothing
    }


-- | The result of replacing text.
rReplaceAllText :: Lens' Response (Maybe ReplaceAllTextResponse)
rReplaceAllText
  = lens _rReplaceAllText
      (\ s a -> s{_rReplaceAllText = a})

-- | The result of creating a named range.
rCreateNamedRange :: Lens' Response (Maybe CreateNamedRangeResponse)
rCreateNamedRange
  = lens _rCreateNamedRange
      (\ s a -> s{_rCreateNamedRange = a})

-- | The result of creating a header.
rCreateHeader :: Lens' Response (Maybe CreateHeaderResponse)
rCreateHeader
  = lens _rCreateHeader
      (\ s a -> s{_rCreateHeader = a})

-- | The result of creating a footnote.
rCreateFootNote :: Lens' Response (Maybe CreateFootNoteResponse)
rCreateFootNote
  = lens _rCreateFootNote
      (\ s a -> s{_rCreateFootNote = a})

-- | The result of creating a footer.
rCreateFooter :: Lens' Response (Maybe CreateFooterResponse)
rCreateFooter
  = lens _rCreateFooter
      (\ s a -> s{_rCreateFooter = a})

-- | The result of inserting an inline image.
rInsertInlineImage :: Lens' Response (Maybe InsertInlineImageResponse)
rInsertInlineImage
  = lens _rInsertInlineImage
      (\ s a -> s{_rInsertInlineImage = a})

-- | The result of inserting an inline Google Sheets chart.
rInsertInlineSheetsChart :: Lens' Response (Maybe InsertInlineSheetsChartResponse)
rInsertInlineSheetsChart
  = lens _rInsertInlineSheetsChart
      (\ s a -> s{_rInsertInlineSheetsChart = a})

instance FromJSON Response where
        parseJSON
          = withObject "Response"
              (\ o ->
                 Response' <$>
                   (o .:? "replaceAllText") <*>
                     (o .:? "createNamedRange")
                     <*> (o .:? "createHeader")
                     <*> (o .:? "createFootnote")
                     <*> (o .:? "createFooter")
                     <*> (o .:? "insertInlineImage")
                     <*> (o .:? "insertInlineSheetsChart"))

instance ToJSON Response where
        toJSON Response'{..}
          = object
              (catMaybes
                 [("replaceAllText" .=) <$> _rReplaceAllText,
                  ("createNamedRange" .=) <$> _rCreateNamedRange,
                  ("createHeader" .=) <$> _rCreateHeader,
                  ("createFootnote" .=) <$> _rCreateFootNote,
                  ("createFooter" .=) <$> _rCreateFooter,
                  ("insertInlineImage" .=) <$> _rInsertInlineImage,
                  ("insertInlineSheetsChart" .=) <$>
                    _rInsertInlineSheetsChart])

-- | A reference to a linked chart embedded from Google Sheets.
--
-- /See:/ 'sheetsChartReference' smart constructor.
data SheetsChartReference =
  SheetsChartReference'
    { _scrSpreadsheetId :: !(Maybe Text)
    , _scrChartId :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SheetsChartReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrSpreadsheetId'
--
-- * 'scrChartId'
sheetsChartReference
    :: SheetsChartReference
sheetsChartReference =
  SheetsChartReference' {_scrSpreadsheetId = Nothing, _scrChartId = Nothing}


-- | The ID of the Google Sheets spreadsheet that contains the source chart.
scrSpreadsheetId :: Lens' SheetsChartReference (Maybe Text)
scrSpreadsheetId
  = lens _scrSpreadsheetId
      (\ s a -> s{_scrSpreadsheetId = a})

-- | The ID of the specific chart in the Google Sheets spreadsheet that is
-- embedded.
scrChartId :: Lens' SheetsChartReference (Maybe Int32)
scrChartId
  = lens _scrChartId (\ s a -> s{_scrChartId = a}) .
      mapping _Coerce

instance FromJSON SheetsChartReference where
        parseJSON
          = withObject "SheetsChartReference"
              (\ o ->
                 SheetsChartReference' <$>
                   (o .:? "spreadsheetId") <*> (o .:? "chartId"))

instance ToJSON SheetsChartReference where
        toJSON SheetsChartReference'{..}
          = object
              (catMaybes
                 [("spreadsheetId" .=) <$> _scrSpreadsheetId,
                  ("chartId" .=) <$> _scrChartId])

-- | A color that can either be fully opaque or fully transparent.
--
-- /See:/ 'optionalColor' smart constructor.
newtype OptionalColor =
  OptionalColor'
    { _ocColor :: Maybe Color
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OptionalColor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocColor'
optionalColor
    :: OptionalColor
optionalColor = OptionalColor' {_ocColor = Nothing}


-- | If set, this will be used as an opaque color. If unset, this represents
-- a transparent color.
ocColor :: Lens' OptionalColor (Maybe Color)
ocColor = lens _ocColor (\ s a -> s{_ocColor = a})

instance FromJSON OptionalColor where
        parseJSON
          = withObject "OptionalColor"
              (\ o -> OptionalColor' <$> (o .:? "color"))

instance ToJSON OptionalColor where
        toJSON OptionalColor'{..}
          = object (catMaybes [("color" .=) <$> _ocColor])

-- | The result of creating a named range.
--
-- /See:/ 'createNamedRangeResponse' smart constructor.
newtype CreateNamedRangeResponse =
  CreateNamedRangeResponse'
    { _cnrrNamedRangeId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateNamedRangeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnrrNamedRangeId'
createNamedRangeResponse
    :: CreateNamedRangeResponse
createNamedRangeResponse =
  CreateNamedRangeResponse' {_cnrrNamedRangeId = Nothing}


-- | The ID of the created named range.
cnrrNamedRangeId :: Lens' CreateNamedRangeResponse (Maybe Text)
cnrrNamedRangeId
  = lens _cnrrNamedRangeId
      (\ s a -> s{_cnrrNamedRangeId = a})

instance FromJSON CreateNamedRangeResponse where
        parseJSON
          = withObject "CreateNamedRangeResponse"
              (\ o ->
                 CreateNamedRangeResponse' <$> (o .:? "namedRangeId"))

instance ToJSON CreateNamedRangeResponse where
        toJSON CreateNamedRangeResponse'{..}
          = object
              (catMaybes
                 [("namedRangeId" .=) <$> _cnrrNamedRangeId])

-- | A suggested change to a Bullet.
--
-- /See:/ 'suggestedBullet' smart constructor.
data SuggestedBullet =
  SuggestedBullet'
    { _sbBullet :: !(Maybe Bullet)
    , _sbBulletSuggestionState :: !(Maybe BulletSuggestionState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestedBullet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbBullet'
--
-- * 'sbBulletSuggestionState'
suggestedBullet
    :: SuggestedBullet
suggestedBullet =
  SuggestedBullet' {_sbBullet = Nothing, _sbBulletSuggestionState = Nothing}


-- | A Bullet that only includes the changes made in this suggestion. This
-- can be used along with the bullet_suggestion_state to see which fields
-- have changed and their new values.
sbBullet :: Lens' SuggestedBullet (Maybe Bullet)
sbBullet = lens _sbBullet (\ s a -> s{_sbBullet = a})

-- | A mask that indicates which of the fields on the base Bullet have been
-- changed in this suggestion.
sbBulletSuggestionState :: Lens' SuggestedBullet (Maybe BulletSuggestionState)
sbBulletSuggestionState
  = lens _sbBulletSuggestionState
      (\ s a -> s{_sbBulletSuggestionState = a})

instance FromJSON SuggestedBullet where
        parseJSON
          = withObject "SuggestedBullet"
              (\ o ->
                 SuggestedBullet' <$>
                   (o .:? "bullet") <*> (o .:? "bulletSuggestionState"))

instance ToJSON SuggestedBullet where
        toJSON SuggestedBullet'{..}
          = object
              (catMaybes
                 [("bullet" .=) <$> _sbBullet,
                  ("bulletSuggestionState" .=) <$>
                    _sbBulletSuggestionState])

-- | An embedded object in the document.
--
-- /See:/ 'embeddedObject' smart constructor.
data EmbeddedObject =
  EmbeddedObject'
    { _eoMarginTop :: !(Maybe Dimension)
    , _eoSize :: !(Maybe Size)
    , _eoLinkedContentReference :: !(Maybe LinkedContentReference)
    , _eoImageProperties :: !(Maybe ImageProperties)
    , _eoEmbeddedObjectBOrder :: !(Maybe EmbeddedObjectBOrder)
    , _eoEmbeddedDrawingProperties :: !(Maybe EmbeddedDrawingProperties)
    , _eoMarginLeft :: !(Maybe Dimension)
    , _eoTitle :: !(Maybe Text)
    , _eoMarginRight :: !(Maybe Dimension)
    , _eoDescription :: !(Maybe Text)
    , _eoMarginBottom :: !(Maybe Dimension)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EmbeddedObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eoMarginTop'
--
-- * 'eoSize'
--
-- * 'eoLinkedContentReference'
--
-- * 'eoImageProperties'
--
-- * 'eoEmbeddedObjectBOrder'
--
-- * 'eoEmbeddedDrawingProperties'
--
-- * 'eoMarginLeft'
--
-- * 'eoTitle'
--
-- * 'eoMarginRight'
--
-- * 'eoDescription'
--
-- * 'eoMarginBottom'
embeddedObject
    :: EmbeddedObject
embeddedObject =
  EmbeddedObject'
    { _eoMarginTop = Nothing
    , _eoSize = Nothing
    , _eoLinkedContentReference = Nothing
    , _eoImageProperties = Nothing
    , _eoEmbeddedObjectBOrder = Nothing
    , _eoEmbeddedDrawingProperties = Nothing
    , _eoMarginLeft = Nothing
    , _eoTitle = Nothing
    , _eoMarginRight = Nothing
    , _eoDescription = Nothing
    , _eoMarginBottom = Nothing
    }


-- | The top margin of the embedded object.
eoMarginTop :: Lens' EmbeddedObject (Maybe Dimension)
eoMarginTop
  = lens _eoMarginTop (\ s a -> s{_eoMarginTop = a})

-- | The visible size of the image after cropping.
eoSize :: Lens' EmbeddedObject (Maybe Size)
eoSize = lens _eoSize (\ s a -> s{_eoSize = a})

-- | A reference to the external linked source content. For example, it
-- contains a reference to the source Sheets chart when the embedded object
-- is a linked chart. If unset, then the embedded object is not linked.
eoLinkedContentReference :: Lens' EmbeddedObject (Maybe LinkedContentReference)
eoLinkedContentReference
  = lens _eoLinkedContentReference
      (\ s a -> s{_eoLinkedContentReference = a})

-- | The properties of an image.
eoImageProperties :: Lens' EmbeddedObject (Maybe ImageProperties)
eoImageProperties
  = lens _eoImageProperties
      (\ s a -> s{_eoImageProperties = a})

-- | The border of the embedded object.
eoEmbeddedObjectBOrder :: Lens' EmbeddedObject (Maybe EmbeddedObjectBOrder)
eoEmbeddedObjectBOrder
  = lens _eoEmbeddedObjectBOrder
      (\ s a -> s{_eoEmbeddedObjectBOrder = a})

-- | The properties of an embedded drawing.
eoEmbeddedDrawingProperties :: Lens' EmbeddedObject (Maybe EmbeddedDrawingProperties)
eoEmbeddedDrawingProperties
  = lens _eoEmbeddedDrawingProperties
      (\ s a -> s{_eoEmbeddedDrawingProperties = a})

-- | The left margin of the embedded object.
eoMarginLeft :: Lens' EmbeddedObject (Maybe Dimension)
eoMarginLeft
  = lens _eoMarginLeft (\ s a -> s{_eoMarginLeft = a})

-- | The title of the embedded object. The \`title\` and \`description\` are
-- both combined to display alt text.
eoTitle :: Lens' EmbeddedObject (Maybe Text)
eoTitle = lens _eoTitle (\ s a -> s{_eoTitle = a})

-- | The right margin of the embedded object.
eoMarginRight :: Lens' EmbeddedObject (Maybe Dimension)
eoMarginRight
  = lens _eoMarginRight
      (\ s a -> s{_eoMarginRight = a})

-- | The description of the embedded object. The \`title\` and
-- \`description\` are both combined to display alt text.
eoDescription :: Lens' EmbeddedObject (Maybe Text)
eoDescription
  = lens _eoDescription
      (\ s a -> s{_eoDescription = a})

-- | The bottom margin of the embedded object.
eoMarginBottom :: Lens' EmbeddedObject (Maybe Dimension)
eoMarginBottom
  = lens _eoMarginBottom
      (\ s a -> s{_eoMarginBottom = a})

instance FromJSON EmbeddedObject where
        parseJSON
          = withObject "EmbeddedObject"
              (\ o ->
                 EmbeddedObject' <$>
                   (o .:? "marginTop") <*> (o .:? "size") <*>
                     (o .:? "linkedContentReference")
                     <*> (o .:? "imageProperties")
                     <*> (o .:? "embeddedObjectBorder")
                     <*> (o .:? "embeddedDrawingProperties")
                     <*> (o .:? "marginLeft")
                     <*> (o .:? "title")
                     <*> (o .:? "marginRight")
                     <*> (o .:? "description")
                     <*> (o .:? "marginBottom"))

instance ToJSON EmbeddedObject where
        toJSON EmbeddedObject'{..}
          = object
              (catMaybes
                 [("marginTop" .=) <$> _eoMarginTop,
                  ("size" .=) <$> _eoSize,
                  ("linkedContentReference" .=) <$>
                    _eoLinkedContentReference,
                  ("imageProperties" .=) <$> _eoImageProperties,
                  ("embeddedObjectBorder" .=) <$>
                    _eoEmbeddedObjectBOrder,
                  ("embeddedDrawingProperties" .=) <$>
                    _eoEmbeddedDrawingProperties,
                  ("marginLeft" .=) <$> _eoMarginLeft,
                  ("title" .=) <$> _eoTitle,
                  ("marginRight" .=) <$> _eoMarginRight,
                  ("description" .=) <$> _eoDescription,
                  ("marginBottom" .=) <$> _eoMarginBottom])

-- | The result of replacing text.
--
-- /See:/ 'replaceAllTextResponse' smart constructor.
newtype ReplaceAllTextResponse =
  ReplaceAllTextResponse'
    { _ratrOccurrencesChanged :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplaceAllTextResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ratrOccurrencesChanged'
replaceAllTextResponse
    :: ReplaceAllTextResponse
replaceAllTextResponse =
  ReplaceAllTextResponse' {_ratrOccurrencesChanged = Nothing}


-- | The number of occurrences changed by replacing all text.
ratrOccurrencesChanged :: Lens' ReplaceAllTextResponse (Maybe Int32)
ratrOccurrencesChanged
  = lens _ratrOccurrencesChanged
      (\ s a -> s{_ratrOccurrencesChanged = a})
      . mapping _Coerce

instance FromJSON ReplaceAllTextResponse where
        parseJSON
          = withObject "ReplaceAllTextResponse"
              (\ o ->
                 ReplaceAllTextResponse' <$>
                   (o .:? "occurrencesChanged"))

instance ToJSON ReplaceAllTextResponse where
        toJSON ReplaceAllTextResponse'{..}
          = object
              (catMaybes
                 [("occurrencesChanged" .=) <$>
                    _ratrOccurrencesChanged])

-- | A mask that indicates which of the fields on the base DocumentStyle have
-- been changed in this suggestion. For any field set to true, there is a
-- new suggested value.
--
-- /See:/ 'documentStyleSuggestionState' smart constructor.
data DocumentStyleSuggestionState =
  DocumentStyleSuggestionState'
    { _dsssMarginHeaderSuggested :: !(Maybe Bool)
    , _dsssFirstPageFooterIdSuggested :: !(Maybe Bool)
    , _dsssDefaultHeaderIdSuggested :: !(Maybe Bool)
    , _dsssUseEvenPageHeaderFooterSuggested :: !(Maybe Bool)
    , _dsssUseCustomHeaderFooterMarginsSuggested :: !(Maybe Bool)
    , _dsssPageNumberStartSuggested :: !(Maybe Bool)
    , _dsssBackgRoundSuggestionState :: !(Maybe BackgRoundSuggestionState)
    , _dsssUseFirstPageHeaderFooterSuggested :: !(Maybe Bool)
    , _dsssPageSizeSuggestionState :: !(Maybe SizeSuggestionState)
    , _dsssMarginTopSuggested :: !(Maybe Bool)
    , _dsssEvenPageFooterIdSuggested :: !(Maybe Bool)
    , _dsssMarginBottomSuggested :: !(Maybe Bool)
    , _dsssEvenPageHeaderIdSuggested :: !(Maybe Bool)
    , _dsssMarginLeftSuggested :: !(Maybe Bool)
    , _dsssMarginRightSuggested :: !(Maybe Bool)
    , _dsssMarginFooterSuggested :: !(Maybe Bool)
    , _dsssFirstPageHeaderIdSuggested :: !(Maybe Bool)
    , _dsssDefaultFooterIdSuggested :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentStyleSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsssMarginHeaderSuggested'
--
-- * 'dsssFirstPageFooterIdSuggested'
--
-- * 'dsssDefaultHeaderIdSuggested'
--
-- * 'dsssUseEvenPageHeaderFooterSuggested'
--
-- * 'dsssUseCustomHeaderFooterMarginsSuggested'
--
-- * 'dsssPageNumberStartSuggested'
--
-- * 'dsssBackgRoundSuggestionState'
--
-- * 'dsssUseFirstPageHeaderFooterSuggested'
--
-- * 'dsssPageSizeSuggestionState'
--
-- * 'dsssMarginTopSuggested'
--
-- * 'dsssEvenPageFooterIdSuggested'
--
-- * 'dsssMarginBottomSuggested'
--
-- * 'dsssEvenPageHeaderIdSuggested'
--
-- * 'dsssMarginLeftSuggested'
--
-- * 'dsssMarginRightSuggested'
--
-- * 'dsssMarginFooterSuggested'
--
-- * 'dsssFirstPageHeaderIdSuggested'
--
-- * 'dsssDefaultFooterIdSuggested'
documentStyleSuggestionState
    :: DocumentStyleSuggestionState
documentStyleSuggestionState =
  DocumentStyleSuggestionState'
    { _dsssMarginHeaderSuggested = Nothing
    , _dsssFirstPageFooterIdSuggested = Nothing
    , _dsssDefaultHeaderIdSuggested = Nothing
    , _dsssUseEvenPageHeaderFooterSuggested = Nothing
    , _dsssUseCustomHeaderFooterMarginsSuggested = Nothing
    , _dsssPageNumberStartSuggested = Nothing
    , _dsssBackgRoundSuggestionState = Nothing
    , _dsssUseFirstPageHeaderFooterSuggested = Nothing
    , _dsssPageSizeSuggestionState = Nothing
    , _dsssMarginTopSuggested = Nothing
    , _dsssEvenPageFooterIdSuggested = Nothing
    , _dsssMarginBottomSuggested = Nothing
    , _dsssEvenPageHeaderIdSuggested = Nothing
    , _dsssMarginLeftSuggested = Nothing
    , _dsssMarginRightSuggested = Nothing
    , _dsssMarginFooterSuggested = Nothing
    , _dsssFirstPageHeaderIdSuggested = Nothing
    , _dsssDefaultFooterIdSuggested = Nothing
    }


-- | Indicates if there was a suggested change to margin_header.
dsssMarginHeaderSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssMarginHeaderSuggested
  = lens _dsssMarginHeaderSuggested
      (\ s a -> s{_dsssMarginHeaderSuggested = a})

-- | Indicates if there was a suggested change to first_page_footer_id.
dsssFirstPageFooterIdSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssFirstPageFooterIdSuggested
  = lens _dsssFirstPageFooterIdSuggested
      (\ s a -> s{_dsssFirstPageFooterIdSuggested = a})

-- | Indicates if there was a suggested change to default_header_id.
dsssDefaultHeaderIdSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssDefaultHeaderIdSuggested
  = lens _dsssDefaultHeaderIdSuggested
      (\ s a -> s{_dsssDefaultHeaderIdSuggested = a})

-- | Indicates if there was a suggested change to
-- use_even_page_header_footer.
dsssUseEvenPageHeaderFooterSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssUseEvenPageHeaderFooterSuggested
  = lens _dsssUseEvenPageHeaderFooterSuggested
      (\ s a ->
         s{_dsssUseEvenPageHeaderFooterSuggested = a})

-- | Indicates if there was a suggested change to
-- use_custom_header_footer_margins.
dsssUseCustomHeaderFooterMarginsSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssUseCustomHeaderFooterMarginsSuggested
  = lens _dsssUseCustomHeaderFooterMarginsSuggested
      (\ s a ->
         s{_dsssUseCustomHeaderFooterMarginsSuggested = a})

-- | Indicates if there was a suggested change to page_number_start.
dsssPageNumberStartSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssPageNumberStartSuggested
  = lens _dsssPageNumberStartSuggested
      (\ s a -> s{_dsssPageNumberStartSuggested = a})

-- | A mask that indicates which of the fields in background have been
-- changed in this suggestion.
dsssBackgRoundSuggestionState :: Lens' DocumentStyleSuggestionState (Maybe BackgRoundSuggestionState)
dsssBackgRoundSuggestionState
  = lens _dsssBackgRoundSuggestionState
      (\ s a -> s{_dsssBackgRoundSuggestionState = a})

-- | Indicates if there was a suggested change to
-- use_first_page_header_footer.
dsssUseFirstPageHeaderFooterSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssUseFirstPageHeaderFooterSuggested
  = lens _dsssUseFirstPageHeaderFooterSuggested
      (\ s a ->
         s{_dsssUseFirstPageHeaderFooterSuggested = a})

-- | A mask that indicates which of the fields in size have been changed in
-- this suggestion.
dsssPageSizeSuggestionState :: Lens' DocumentStyleSuggestionState (Maybe SizeSuggestionState)
dsssPageSizeSuggestionState
  = lens _dsssPageSizeSuggestionState
      (\ s a -> s{_dsssPageSizeSuggestionState = a})

-- | Indicates if there was a suggested change to margin_top.
dsssMarginTopSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssMarginTopSuggested
  = lens _dsssMarginTopSuggested
      (\ s a -> s{_dsssMarginTopSuggested = a})

-- | Indicates if there was a suggested change to even_page_footer_id.
dsssEvenPageFooterIdSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssEvenPageFooterIdSuggested
  = lens _dsssEvenPageFooterIdSuggested
      (\ s a -> s{_dsssEvenPageFooterIdSuggested = a})

-- | Indicates if there was a suggested change to margin_bottom.
dsssMarginBottomSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssMarginBottomSuggested
  = lens _dsssMarginBottomSuggested
      (\ s a -> s{_dsssMarginBottomSuggested = a})

-- | Indicates if there was a suggested change to even_page_header_id.
dsssEvenPageHeaderIdSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssEvenPageHeaderIdSuggested
  = lens _dsssEvenPageHeaderIdSuggested
      (\ s a -> s{_dsssEvenPageHeaderIdSuggested = a})

-- | Indicates if there was a suggested change to margin_left.
dsssMarginLeftSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssMarginLeftSuggested
  = lens _dsssMarginLeftSuggested
      (\ s a -> s{_dsssMarginLeftSuggested = a})

-- | Indicates if there was a suggested change to margin_right.
dsssMarginRightSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssMarginRightSuggested
  = lens _dsssMarginRightSuggested
      (\ s a -> s{_dsssMarginRightSuggested = a})

-- | Indicates if there was a suggested change to margin_footer.
dsssMarginFooterSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssMarginFooterSuggested
  = lens _dsssMarginFooterSuggested
      (\ s a -> s{_dsssMarginFooterSuggested = a})

-- | Indicates if there was a suggested change to first_page_header_id.
dsssFirstPageHeaderIdSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssFirstPageHeaderIdSuggested
  = lens _dsssFirstPageHeaderIdSuggested
      (\ s a -> s{_dsssFirstPageHeaderIdSuggested = a})

-- | Indicates if there was a suggested change to default_footer_id.
dsssDefaultFooterIdSuggested :: Lens' DocumentStyleSuggestionState (Maybe Bool)
dsssDefaultFooterIdSuggested
  = lens _dsssDefaultFooterIdSuggested
      (\ s a -> s{_dsssDefaultFooterIdSuggested = a})

instance FromJSON DocumentStyleSuggestionState where
        parseJSON
          = withObject "DocumentStyleSuggestionState"
              (\ o ->
                 DocumentStyleSuggestionState' <$>
                   (o .:? "marginHeaderSuggested") <*>
                     (o .:? "firstPageFooterIdSuggested")
                     <*> (o .:? "defaultHeaderIdSuggested")
                     <*> (o .:? "useEvenPageHeaderFooterSuggested")
                     <*> (o .:? "useCustomHeaderFooterMarginsSuggested")
                     <*> (o .:? "pageNumberStartSuggested")
                     <*> (o .:? "backgroundSuggestionState")
                     <*> (o .:? "useFirstPageHeaderFooterSuggested")
                     <*> (o .:? "pageSizeSuggestionState")
                     <*> (o .:? "marginTopSuggested")
                     <*> (o .:? "evenPageFooterIdSuggested")
                     <*> (o .:? "marginBottomSuggested")
                     <*> (o .:? "evenPageHeaderIdSuggested")
                     <*> (o .:? "marginLeftSuggested")
                     <*> (o .:? "marginRightSuggested")
                     <*> (o .:? "marginFooterSuggested")
                     <*> (o .:? "firstPageHeaderIdSuggested")
                     <*> (o .:? "defaultFooterIdSuggested"))

instance ToJSON DocumentStyleSuggestionState where
        toJSON DocumentStyleSuggestionState'{..}
          = object
              (catMaybes
                 [("marginHeaderSuggested" .=) <$>
                    _dsssMarginHeaderSuggested,
                  ("firstPageFooterIdSuggested" .=) <$>
                    _dsssFirstPageFooterIdSuggested,
                  ("defaultHeaderIdSuggested" .=) <$>
                    _dsssDefaultHeaderIdSuggested,
                  ("useEvenPageHeaderFooterSuggested" .=) <$>
                    _dsssUseEvenPageHeaderFooterSuggested,
                  ("useCustomHeaderFooterMarginsSuggested" .=) <$>
                    _dsssUseCustomHeaderFooterMarginsSuggested,
                  ("pageNumberStartSuggested" .=) <$>
                    _dsssPageNumberStartSuggested,
                  ("backgroundSuggestionState" .=) <$>
                    _dsssBackgRoundSuggestionState,
                  ("useFirstPageHeaderFooterSuggested" .=) <$>
                    _dsssUseFirstPageHeaderFooterSuggested,
                  ("pageSizeSuggestionState" .=) <$>
                    _dsssPageSizeSuggestionState,
                  ("marginTopSuggested" .=) <$>
                    _dsssMarginTopSuggested,
                  ("evenPageFooterIdSuggested" .=) <$>
                    _dsssEvenPageFooterIdSuggested,
                  ("marginBottomSuggested" .=) <$>
                    _dsssMarginBottomSuggested,
                  ("evenPageHeaderIdSuggested" .=) <$>
                    _dsssEvenPageHeaderIdSuggested,
                  ("marginLeftSuggested" .=) <$>
                    _dsssMarginLeftSuggested,
                  ("marginRightSuggested" .=) <$>
                    _dsssMarginRightSuggested,
                  ("marginFooterSuggested" .=) <$>
                    _dsssMarginFooterSuggested,
                  ("firstPageHeaderIdSuggested" .=) <$>
                    _dsssFirstPageHeaderIdSuggested,
                  ("defaultFooterIdSuggested" .=) <$>
                    _dsssDefaultFooterIdSuggested])

-- | A reference to the external linked source content.
--
-- /See:/ 'linkedContentReference' smart constructor.
newtype LinkedContentReference =
  LinkedContentReference'
    { _lcrSheetsChartReference :: Maybe SheetsChartReference
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LinkedContentReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrSheetsChartReference'
linkedContentReference
    :: LinkedContentReference
linkedContentReference =
  LinkedContentReference' {_lcrSheetsChartReference = Nothing}


-- | A reference to the linked chart.
lcrSheetsChartReference :: Lens' LinkedContentReference (Maybe SheetsChartReference)
lcrSheetsChartReference
  = lens _lcrSheetsChartReference
      (\ s a -> s{_lcrSheetsChartReference = a})

instance FromJSON LinkedContentReference where
        parseJSON
          = withObject "LinkedContentReference"
              (\ o ->
                 LinkedContentReference' <$>
                   (o .:? "sheetsChartReference"))

instance ToJSON LinkedContentReference where
        toJSON LinkedContentReference'{..}
          = object
              (catMaybes
                 [("sheetsChartReference" .=) <$>
                    _lcrSheetsChartReference])

-- | The shading of a paragraph.
--
-- /See:/ 'shading' smart constructor.
newtype Shading =
  Shading'
    { _sBackgRoundColor :: Maybe OptionalColor
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Shading' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sBackgRoundColor'
shading
    :: Shading
shading = Shading' {_sBackgRoundColor = Nothing}


-- | The background color of this paragraph shading.
sBackgRoundColor :: Lens' Shading (Maybe OptionalColor)
sBackgRoundColor
  = lens _sBackgRoundColor
      (\ s a -> s{_sBackgRoundColor = a})

instance FromJSON Shading where
        parseJSON
          = withObject "Shading"
              (\ o -> Shading' <$> (o .:? "backgroundColor"))

instance ToJSON Shading where
        toJSON Shading'{..}
          = object
              (catMaybes
                 [("backgroundColor" .=) <$> _sBackgRoundColor])

-- | A mask that indicates which of the fields on the base
-- InlineObjectProperties have been changed in this suggestion. For any
-- field set to true, there is a new suggested value.
--
-- /See:/ 'inlineObjectPropertiesSuggestionState' smart constructor.
newtype InlineObjectPropertiesSuggestionState =
  InlineObjectPropertiesSuggestionState'
    { _iopssEmbeddedObjectSuggestionState :: Maybe EmbeddedObjectSuggestionState
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InlineObjectPropertiesSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iopssEmbeddedObjectSuggestionState'
inlineObjectPropertiesSuggestionState
    :: InlineObjectPropertiesSuggestionState
inlineObjectPropertiesSuggestionState =
  InlineObjectPropertiesSuggestionState'
    {_iopssEmbeddedObjectSuggestionState = Nothing}


-- | A mask that indicates which of the fields in embedded_object have been
-- changed in this suggestion.
iopssEmbeddedObjectSuggestionState :: Lens' InlineObjectPropertiesSuggestionState (Maybe EmbeddedObjectSuggestionState)
iopssEmbeddedObjectSuggestionState
  = lens _iopssEmbeddedObjectSuggestionState
      (\ s a -> s{_iopssEmbeddedObjectSuggestionState = a})

instance FromJSON
           InlineObjectPropertiesSuggestionState
         where
        parseJSON
          = withObject "InlineObjectPropertiesSuggestionState"
              (\ o ->
                 InlineObjectPropertiesSuggestionState' <$>
                   (o .:? "embeddedObjectSuggestionState"))

instance ToJSON InlineObjectPropertiesSuggestionState
         where
        toJSON InlineObjectPropertiesSuggestionState'{..}
          = object
              (catMaybes
                 [("embeddedObjectSuggestionState" .=) <$>
                    _iopssEmbeddedObjectSuggestionState])

-- | The suggested text style changes to this PageBreak, keyed by suggestion
-- ID.
--
-- /See:/ 'pageBreakSuggestedTextStyleChanges' smart constructor.
newtype PageBreakSuggestedTextStyleChanges =
  PageBreakSuggestedTextStyleChanges'
    { _pbstscAddtional :: HashMap Text SuggestedTextStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PageBreakSuggestedTextStyleChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbstscAddtional'
pageBreakSuggestedTextStyleChanges
    :: HashMap Text SuggestedTextStyle -- ^ 'pbstscAddtional'
    -> PageBreakSuggestedTextStyleChanges
pageBreakSuggestedTextStyleChanges pPbstscAddtional_ =
  PageBreakSuggestedTextStyleChanges'
    {_pbstscAddtional = _Coerce # pPbstscAddtional_}


pbstscAddtional :: Lens' PageBreakSuggestedTextStyleChanges (HashMap Text SuggestedTextStyle)
pbstscAddtional
  = lens _pbstscAddtional
      (\ s a -> s{_pbstscAddtional = a})
      . _Coerce

instance FromJSON PageBreakSuggestedTextStyleChanges
         where
        parseJSON
          = withObject "PageBreakSuggestedTextStyleChanges"
              (\ o ->
                 PageBreakSuggestedTextStyleChanges' <$>
                   (parseJSONObject o))

instance ToJSON PageBreakSuggestedTextStyleChanges
         where
        toJSON = toJSON . _pbstscAddtional

-- | Output only. The lists in the document, keyed by list ID.
--
-- /See:/ 'documentLists' smart constructor.
newtype DocumentLists =
  DocumentLists'
    { _dlAddtional :: HashMap Text List
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentLists' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlAddtional'
documentLists
    :: HashMap Text List -- ^ 'dlAddtional'
    -> DocumentLists
documentLists pDlAddtional_ =
  DocumentLists' {_dlAddtional = _Coerce # pDlAddtional_}


dlAddtional :: Lens' DocumentLists (HashMap Text List)
dlAddtional
  = lens _dlAddtional (\ s a -> s{_dlAddtional = a}) .
      _Coerce

instance FromJSON DocumentLists where
        parseJSON
          = withObject "DocumentLists"
              (\ o -> DocumentLists' <$> (parseJSONObject o))

instance ToJSON DocumentLists where
        toJSON = toJSON . _dlAddtional

-- | Deletes content from the document.
--
-- /See:/ 'deleteContentRangeRequest' smart constructor.
newtype DeleteContentRangeRequest =
  DeleteContentRangeRequest'
    { _dcrrRange :: Maybe Range
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteContentRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrRange'
deleteContentRangeRequest
    :: DeleteContentRangeRequest
deleteContentRangeRequest = DeleteContentRangeRequest' {_dcrrRange = Nothing}


-- | The range of content to delete. Deleting text that crosses a paragraph
-- boundary may result in changes to paragraph styles, lists, positioned
-- objects and bookmarks as the two paragraphs are merged. Attempting to
-- delete certain ranges can result in an invalid document structure in
-- which case a 400 bad request error is returned. Some examples of invalid
-- delete requests include: * Deleting one code unit of a surrogate pair. *
-- Deleting the last newline character of a Body, Header, Footer, Footnote,
-- TableCell or TableOfContents. * Deleting the start or end of a Table,
-- TableOfContents or Equation without deleting the entire element. *
-- Deleting the newline character before a Table, TableOfContents or
-- SectionBreak without deleting the element. * Deleting individual rows or
-- cells of a table. Deleting the content within a table cell is allowed.
dcrrRange :: Lens' DeleteContentRangeRequest (Maybe Range)
dcrrRange
  = lens _dcrrRange (\ s a -> s{_dcrrRange = a})

instance FromJSON DeleteContentRangeRequest where
        parseJSON
          = withObject "DeleteContentRangeRequest"
              (\ o ->
                 DeleteContentRangeRequest' <$> (o .:? "range"))

instance ToJSON DeleteContentRangeRequest where
        toJSON DeleteContentRangeRequest'{..}
          = object (catMaybes [("range" .=) <$> _dcrrRange])

-- | Describes the bullet of a paragraph.
--
-- /See:/ 'bullet' smart constructor.
data Bullet =
  Bullet'
    { _bListId :: !(Maybe Text)
    , _bTextStyle :: !(Maybe TextStyle)
    , _bNestingLevel :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Bullet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bListId'
--
-- * 'bTextStyle'
--
-- * 'bNestingLevel'
bullet
    :: Bullet
bullet =
  Bullet' {_bListId = Nothing, _bTextStyle = Nothing, _bNestingLevel = Nothing}


-- | The ID of the list this paragraph belongs to.
bListId :: Lens' Bullet (Maybe Text)
bListId = lens _bListId (\ s a -> s{_bListId = a})

-- | The paragraph specific text style applied to this bullet.
bTextStyle :: Lens' Bullet (Maybe TextStyle)
bTextStyle
  = lens _bTextStyle (\ s a -> s{_bTextStyle = a})

-- | The nesting level of this paragraph in the list.
bNestingLevel :: Lens' Bullet (Maybe Int32)
bNestingLevel
  = lens _bNestingLevel
      (\ s a -> s{_bNestingLevel = a})
      . mapping _Coerce

instance FromJSON Bullet where
        parseJSON
          = withObject "Bullet"
              (\ o ->
                 Bullet' <$>
                   (o .:? "listId") <*> (o .:? "textStyle") <*>
                     (o .:? "nestingLevel"))

instance ToJSON Bullet where
        toJSON Bullet'{..}
          = object
              (catMaybes
                 [("listId" .=) <$> _bListId,
                  ("textStyle" .=) <$> _bTextStyle,
                  ("nestingLevel" .=) <$> _bNestingLevel])

-- | A StructuralElement representing a paragraph. A paragraph is a range of
-- content that is terminated with a newline character.
--
-- /See:/ 'paragraph' smart constructor.
data Paragraph =
  Paragraph'
    { _pBullet :: !(Maybe Bullet)
    , _pSuggestedBulletChanges :: !(Maybe ParagraphSuggestedBulletChanges)
    , _pSuggestedPositionedObjectIds :: !(Maybe ParagraphSuggestedPositionedObjectIds)
    , _pSuggestedParagraphStyleChanges :: !(Maybe ParagraphSuggestedParagraphStyleChanges)
    , _pElements :: !(Maybe [ParagraphElement])
    , _pPositionedObjectIds :: !(Maybe [Text])
    , _pParagraphStyle :: !(Maybe ParagraphStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Paragraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pBullet'
--
-- * 'pSuggestedBulletChanges'
--
-- * 'pSuggestedPositionedObjectIds'
--
-- * 'pSuggestedParagraphStyleChanges'
--
-- * 'pElements'
--
-- * 'pPositionedObjectIds'
--
-- * 'pParagraphStyle'
paragraph
    :: Paragraph
paragraph =
  Paragraph'
    { _pBullet = Nothing
    , _pSuggestedBulletChanges = Nothing
    , _pSuggestedPositionedObjectIds = Nothing
    , _pSuggestedParagraphStyleChanges = Nothing
    , _pElements = Nothing
    , _pPositionedObjectIds = Nothing
    , _pParagraphStyle = Nothing
    }


-- | The bullet for this paragraph. If not present, the paragraph does not
-- belong to a list.
pBullet :: Lens' Paragraph (Maybe Bullet)
pBullet = lens _pBullet (\ s a -> s{_pBullet = a})

-- | The suggested changes to this paragraph\'s bullet.
pSuggestedBulletChanges :: Lens' Paragraph (Maybe ParagraphSuggestedBulletChanges)
pSuggestedBulletChanges
  = lens _pSuggestedBulletChanges
      (\ s a -> s{_pSuggestedBulletChanges = a})

-- | The IDs of the positioned objects that are suggested to be attached to
-- this paragraph, keyed by suggestion ID.
pSuggestedPositionedObjectIds :: Lens' Paragraph (Maybe ParagraphSuggestedPositionedObjectIds)
pSuggestedPositionedObjectIds
  = lens _pSuggestedPositionedObjectIds
      (\ s a -> s{_pSuggestedPositionedObjectIds = a})

-- | The suggested paragraph style changes to this paragraph, keyed by
-- suggestion ID.
pSuggestedParagraphStyleChanges :: Lens' Paragraph (Maybe ParagraphSuggestedParagraphStyleChanges)
pSuggestedParagraphStyleChanges
  = lens _pSuggestedParagraphStyleChanges
      (\ s a -> s{_pSuggestedParagraphStyleChanges = a})

-- | The content of the paragraph broken down into its component parts.
pElements :: Lens' Paragraph [ParagraphElement]
pElements
  = lens _pElements (\ s a -> s{_pElements = a}) .
      _Default
      . _Coerce

-- | The IDs of the positioned objects tethered to this paragraph.
pPositionedObjectIds :: Lens' Paragraph [Text]
pPositionedObjectIds
  = lens _pPositionedObjectIds
      (\ s a -> s{_pPositionedObjectIds = a})
      . _Default
      . _Coerce

-- | The style of this paragraph.
pParagraphStyle :: Lens' Paragraph (Maybe ParagraphStyle)
pParagraphStyle
  = lens _pParagraphStyle
      (\ s a -> s{_pParagraphStyle = a})

instance FromJSON Paragraph where
        parseJSON
          = withObject "Paragraph"
              (\ o ->
                 Paragraph' <$>
                   (o .:? "bullet") <*> (o .:? "suggestedBulletChanges")
                     <*> (o .:? "suggestedPositionedObjectIds")
                     <*> (o .:? "suggestedParagraphStyleChanges")
                     <*> (o .:? "elements" .!= mempty)
                     <*> (o .:? "positionedObjectIds" .!= mempty)
                     <*> (o .:? "paragraphStyle"))

instance ToJSON Paragraph where
        toJSON Paragraph'{..}
          = object
              (catMaybes
                 [("bullet" .=) <$> _pBullet,
                  ("suggestedBulletChanges" .=) <$>
                    _pSuggestedBulletChanges,
                  ("suggestedPositionedObjectIds" .=) <$>
                    _pSuggestedPositionedObjectIds,
                  ("suggestedParagraphStyleChanges" .=) <$>
                    _pSuggestedParagraphStyleChanges,
                  ("elements" .=) <$> _pElements,
                  ("positionedObjectIds" .=) <$> _pPositionedObjectIds,
                  ("paragraphStyle" .=) <$> _pParagraphStyle])

-- | The suggested text style changes to this run, keyed by suggestion ID.
--
-- /See:/ 'textRunSuggestedTextStyleChanges' smart constructor.
newtype TextRunSuggestedTextStyleChanges =
  TextRunSuggestedTextStyleChanges'
    { _trstscAddtional :: HashMap Text SuggestedTextStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextRunSuggestedTextStyleChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trstscAddtional'
textRunSuggestedTextStyleChanges
    :: HashMap Text SuggestedTextStyle -- ^ 'trstscAddtional'
    -> TextRunSuggestedTextStyleChanges
textRunSuggestedTextStyleChanges pTrstscAddtional_ =
  TextRunSuggestedTextStyleChanges'
    {_trstscAddtional = _Coerce # pTrstscAddtional_}


trstscAddtional :: Lens' TextRunSuggestedTextStyleChanges (HashMap Text SuggestedTextStyle)
trstscAddtional
  = lens _trstscAddtional
      (\ s a -> s{_trstscAddtional = a})
      . _Coerce

instance FromJSON TextRunSuggestedTextStyleChanges
         where
        parseJSON
          = withObject "TextRunSuggestedTextStyleChanges"
              (\ o ->
                 TextRunSuggestedTextStyleChanges' <$>
                   (parseJSONObject o))

instance ToJSON TextRunSuggestedTextStyleChanges
         where
        toJSON = toJSON . _trstscAddtional

-- | A suggested change to a TableRowStyle.
--
-- /See:/ 'suggestedTableRowStyle' smart constructor.
data SuggestedTableRowStyle =
  SuggestedTableRowStyle'
    { _strsTableRowStyleSuggestionState :: !(Maybe TableRowStyleSuggestionState)
    , _strsTableRowStyle :: !(Maybe TableRowStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestedTableRowStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'strsTableRowStyleSuggestionState'
--
-- * 'strsTableRowStyle'
suggestedTableRowStyle
    :: SuggestedTableRowStyle
suggestedTableRowStyle =
  SuggestedTableRowStyle'
    {_strsTableRowStyleSuggestionState = Nothing, _strsTableRowStyle = Nothing}


-- | A mask that indicates which of the fields on the base TableRowStyle have
-- been changed in this suggestion.
strsTableRowStyleSuggestionState :: Lens' SuggestedTableRowStyle (Maybe TableRowStyleSuggestionState)
strsTableRowStyleSuggestionState
  = lens _strsTableRowStyleSuggestionState
      (\ s a -> s{_strsTableRowStyleSuggestionState = a})

-- | A TableRowStyle that only includes the changes made in this suggestion.
-- This can be used along with the table_row_style_suggestion_state to see
-- which fields have changed and their new values.
strsTableRowStyle :: Lens' SuggestedTableRowStyle (Maybe TableRowStyle)
strsTableRowStyle
  = lens _strsTableRowStyle
      (\ s a -> s{_strsTableRowStyle = a})

instance FromJSON SuggestedTableRowStyle where
        parseJSON
          = withObject "SuggestedTableRowStyle"
              (\ o ->
                 SuggestedTableRowStyle' <$>
                   (o .:? "tableRowStyleSuggestionState") <*>
                     (o .:? "tableRowStyle"))

instance ToJSON SuggestedTableRowStyle where
        toJSON SuggestedTableRowStyle'{..}
          = object
              (catMaybes
                 [("tableRowStyleSuggestionState" .=) <$>
                    _strsTableRowStyleSuggestionState,
                  ("tableRowStyle" .=) <$> _strsTableRowStyle])

-- | Output only. The footnotes in the document, keyed by footnote ID.
--
-- /See:/ 'documentFootNotes' smart constructor.
newtype DocumentFootNotes =
  DocumentFootNotes'
    { _dfnAddtional :: HashMap Text FootNote
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentFootNotes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfnAddtional'
documentFootNotes
    :: HashMap Text FootNote -- ^ 'dfnAddtional'
    -> DocumentFootNotes
documentFootNotes pDfnAddtional_ =
  DocumentFootNotes' {_dfnAddtional = _Coerce # pDfnAddtional_}


dfnAddtional :: Lens' DocumentFootNotes (HashMap Text FootNote)
dfnAddtional
  = lens _dfnAddtional (\ s a -> s{_dfnAddtional = a})
      . _Coerce

instance FromJSON DocumentFootNotes where
        parseJSON
          = withObject "DocumentFootNotes"
              (\ o -> DocumentFootNotes' <$> (parseJSONObject o))

instance ToJSON DocumentFootNotes where
        toJSON = toJSON . _dfnAddtional

-- | Updates the SectionStyle.
--
-- /See:/ 'updateSectionStyleRequest' smart constructor.
data UpdateSectionStyleRequest =
  UpdateSectionStyleRequest'
    { _ussrRange :: !(Maybe Range)
    , _ussrSectionStyle :: !(Maybe SectionStyle)
    , _ussrFields :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateSectionStyleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussrRange'
--
-- * 'ussrSectionStyle'
--
-- * 'ussrFields'
updateSectionStyleRequest
    :: UpdateSectionStyleRequest
updateSectionStyleRequest =
  UpdateSectionStyleRequest'
    {_ussrRange = Nothing, _ussrSectionStyle = Nothing, _ussrFields = Nothing}


-- | The range overlapping the sections to style. Because section breaks can
-- only be inserted inside the body, the segment ID field must be empty.
ussrRange :: Lens' UpdateSectionStyleRequest (Maybe Range)
ussrRange
  = lens _ussrRange (\ s a -> s{_ussrRange = a})

-- | The styles to be set on the section. Certain section style changes may
-- cause other changes in order to mirror the behavior of the Docs editor.
-- See the documentation of SectionStyle for more information.
ussrSectionStyle :: Lens' UpdateSectionStyleRequest (Maybe SectionStyle)
ussrSectionStyle
  = lens _ussrSectionStyle
      (\ s a -> s{_ussrSectionStyle = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`section_style\` is implied and must not be specified. A
-- single \`\"*\"\` can be used as short-hand for listing every field. For
-- example to update the left margin, set \`fields\` to
-- \`\"margin_left\"\`.
ussrFields :: Lens' UpdateSectionStyleRequest (Maybe GFieldMask)
ussrFields
  = lens _ussrFields (\ s a -> s{_ussrFields = a})

instance FromJSON UpdateSectionStyleRequest where
        parseJSON
          = withObject "UpdateSectionStyleRequest"
              (\ o ->
                 UpdateSectionStyleRequest' <$>
                   (o .:? "range") <*> (o .:? "sectionStyle") <*>
                     (o .:? "fields"))

instance ToJSON UpdateSectionStyleRequest where
        toJSON UpdateSectionStyleRequest'{..}
          = object
              (catMaybes
                 [("range" .=) <$> _ussrRange,
                  ("sectionStyle" .=) <$> _ussrSectionStyle,
                  ("fields" .=) <$> _ussrFields])

-- | The properties of an image.
--
-- /See:/ 'imageProperties' smart constructor.
data ImageProperties =
  ImageProperties'
    { _ipCropProperties :: !(Maybe CropProperties)
    , _ipContentURI :: !(Maybe Text)
    , _ipTransparency :: !(Maybe (Textual Double))
    , _ipAngle :: !(Maybe (Textual Double))
    , _ipContrast :: !(Maybe (Textual Double))
    , _ipSourceURI :: !(Maybe Text)
    , _ipBrightness :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImageProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipCropProperties'
--
-- * 'ipContentURI'
--
-- * 'ipTransparency'
--
-- * 'ipAngle'
--
-- * 'ipContrast'
--
-- * 'ipSourceURI'
--
-- * 'ipBrightness'
imageProperties
    :: ImageProperties
imageProperties =
  ImageProperties'
    { _ipCropProperties = Nothing
    , _ipContentURI = Nothing
    , _ipTransparency = Nothing
    , _ipAngle = Nothing
    , _ipContrast = Nothing
    , _ipSourceURI = Nothing
    , _ipBrightness = Nothing
    }


-- | The crop properties of the image.
ipCropProperties :: Lens' ImageProperties (Maybe CropProperties)
ipCropProperties
  = lens _ipCropProperties
      (\ s a -> s{_ipCropProperties = a})

-- | A URI to the image with a default lifetime of 30 minutes. This URI is
-- tagged with the account of the requester. Anyone with the URI
-- effectively accesses the image as the original requester. Access to the
-- image may be lost if the document\'s sharing settings change.
ipContentURI :: Lens' ImageProperties (Maybe Text)
ipContentURI
  = lens _ipContentURI (\ s a -> s{_ipContentURI = a})

-- | The transparency effect of the image. The value should be in the
-- interval [0.0, 1.0], where 0 means no effect and 1 means completely
-- transparent.
ipTransparency :: Lens' ImageProperties (Maybe Double)
ipTransparency
  = lens _ipTransparency
      (\ s a -> s{_ipTransparency = a})
      . mapping _Coerce

-- | The clockwise rotation angle of the image, in radians.
ipAngle :: Lens' ImageProperties (Maybe Double)
ipAngle
  = lens _ipAngle (\ s a -> s{_ipAngle = a}) .
      mapping _Coerce

-- | The contrast effect of the image. The value should be in the interval
-- [-1.0, 1.0], where 0 means no effect.
ipContrast :: Lens' ImageProperties (Maybe Double)
ipContrast
  = lens _ipContrast (\ s a -> s{_ipContrast = a}) .
      mapping _Coerce

-- | The source URI is the URI used to insert the image. The source URI can
-- be empty.
ipSourceURI :: Lens' ImageProperties (Maybe Text)
ipSourceURI
  = lens _ipSourceURI (\ s a -> s{_ipSourceURI = a})

-- | The brightness effect of the image. The value should be in the interval
-- [-1.0, 1.0], where 0 means no effect.
ipBrightness :: Lens' ImageProperties (Maybe Double)
ipBrightness
  = lens _ipBrightness (\ s a -> s{_ipBrightness = a})
      . mapping _Coerce

instance FromJSON ImageProperties where
        parseJSON
          = withObject "ImageProperties"
              (\ o ->
                 ImageProperties' <$>
                   (o .:? "cropProperties") <*> (o .:? "contentUri") <*>
                     (o .:? "transparency")
                     <*> (o .:? "angle")
                     <*> (o .:? "contrast")
                     <*> (o .:? "sourceUri")
                     <*> (o .:? "brightness"))

instance ToJSON ImageProperties where
        toJSON ImageProperties'{..}
          = object
              (catMaybes
                 [("cropProperties" .=) <$> _ipCropProperties,
                  ("contentUri" .=) <$> _ipContentURI,
                  ("transparency" .=) <$> _ipTransparency,
                  ("angle" .=) <$> _ipAngle,
                  ("contrast" .=) <$> _ipContrast,
                  ("sourceUri" .=) <$> _ipSourceURI,
                  ("brightness" .=) <$> _ipBrightness])

-- | Inserts an empty column into a table.
--
-- /See:/ 'insertTableColumnRequest' smart constructor.
data InsertTableColumnRequest =
  InsertTableColumnRequest'
    { _itcrInsertRight :: !(Maybe Bool)
    , _itcrTableCellLocation :: !(Maybe TableCellLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InsertTableColumnRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itcrInsertRight'
--
-- * 'itcrTableCellLocation'
insertTableColumnRequest
    :: InsertTableColumnRequest
insertTableColumnRequest =
  InsertTableColumnRequest'
    {_itcrInsertRight = Nothing, _itcrTableCellLocation = Nothing}


-- | Whether to insert new column to the right of the reference cell
-- location. - \`True\`: insert to the right. - \`False\`: insert to the
-- left.
itcrInsertRight :: Lens' InsertTableColumnRequest (Maybe Bool)
itcrInsertRight
  = lens _itcrInsertRight
      (\ s a -> s{_itcrInsertRight = a})

-- | The reference table cell location from which columns will be inserted. A
-- new column will be inserted to the left (or right) of the column where
-- the reference cell is. If the reference cell is a merged cell, a new
-- column will be inserted to the left (or right) of the merged cell.
itcrTableCellLocation :: Lens' InsertTableColumnRequest (Maybe TableCellLocation)
itcrTableCellLocation
  = lens _itcrTableCellLocation
      (\ s a -> s{_itcrTableCellLocation = a})

instance FromJSON InsertTableColumnRequest where
        parseJSON
          = withObject "InsertTableColumnRequest"
              (\ o ->
                 InsertTableColumnRequest' <$>
                   (o .:? "insertRight") <*>
                     (o .:? "tableCellLocation"))

instance ToJSON InsertTableColumnRequest where
        toJSON InsertTableColumnRequest'{..}
          = object
              (catMaybes
                 [("insertRight" .=) <$> _itcrInsertRight,
                  ("tableCellLocation" .=) <$> _itcrTableCellLocation])

-- | A mask that indicates which of the fields on the base Size have been
-- changed in this suggestion. For any field set to true, the Size has a
-- new suggested value.
--
-- /See:/ 'sizeSuggestionState' smart constructor.
data SizeSuggestionState =
  SizeSuggestionState'
    { _sssHeightSuggested :: !(Maybe Bool)
    , _sssWidthSuggested :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SizeSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssHeightSuggested'
--
-- * 'sssWidthSuggested'
sizeSuggestionState
    :: SizeSuggestionState
sizeSuggestionState =
  SizeSuggestionState'
    {_sssHeightSuggested = Nothing, _sssWidthSuggested = Nothing}


-- | Indicates if there was a suggested change to height.
sssHeightSuggested :: Lens' SizeSuggestionState (Maybe Bool)
sssHeightSuggested
  = lens _sssHeightSuggested
      (\ s a -> s{_sssHeightSuggested = a})

-- | Indicates if there was a suggested change to width.
sssWidthSuggested :: Lens' SizeSuggestionState (Maybe Bool)
sssWidthSuggested
  = lens _sssWidthSuggested
      (\ s a -> s{_sssWidthSuggested = a})

instance FromJSON SizeSuggestionState where
        parseJSON
          = withObject "SizeSuggestionState"
              (\ o ->
                 SizeSuggestionState' <$>
                   (o .:? "heightSuggested") <*>
                     (o .:? "widthSuggested"))

instance ToJSON SizeSuggestionState where
        toJSON SizeSuggestionState'{..}
          = object
              (catMaybes
                 [("heightSuggested" .=) <$> _sssHeightSuggested,
                  ("widthSuggested" .=) <$> _sssWidthSuggested])

-- | The suggested changes to the list properties, keyed by suggestion ID.
--
-- /See:/ 'listSuggestedListPropertiesChanges' smart constructor.
newtype ListSuggestedListPropertiesChanges =
  ListSuggestedListPropertiesChanges'
    { _lslpcAddtional :: HashMap Text SuggestedListProperties
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSuggestedListPropertiesChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lslpcAddtional'
listSuggestedListPropertiesChanges
    :: HashMap Text SuggestedListProperties -- ^ 'lslpcAddtional'
    -> ListSuggestedListPropertiesChanges
listSuggestedListPropertiesChanges pLslpcAddtional_ =
  ListSuggestedListPropertiesChanges'
    {_lslpcAddtional = _Coerce # pLslpcAddtional_}


lslpcAddtional :: Lens' ListSuggestedListPropertiesChanges (HashMap Text SuggestedListProperties)
lslpcAddtional
  = lens _lslpcAddtional
      (\ s a -> s{_lslpcAddtional = a})
      . _Coerce

instance FromJSON ListSuggestedListPropertiesChanges
         where
        parseJSON
          = withObject "ListSuggestedListPropertiesChanges"
              (\ o ->
                 ListSuggestedListPropertiesChanges' <$>
                   (parseJSONObject o))

instance ToJSON ListSuggestedListPropertiesChanges
         where
        toJSON = toJSON . _lslpcAddtional

-- | Response message from a BatchUpdateDocument request.
--
-- /See:/ 'batchUpdateDocumentResponse' smart constructor.
data BatchUpdateDocumentResponse =
  BatchUpdateDocumentResponse'
    { _budrDocumentId :: !(Maybe Text)
    , _budrReplies :: !(Maybe [Response])
    , _budrWriteControl :: !(Maybe WriteControl)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateDocumentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'budrDocumentId'
--
-- * 'budrReplies'
--
-- * 'budrWriteControl'
batchUpdateDocumentResponse
    :: BatchUpdateDocumentResponse
batchUpdateDocumentResponse =
  BatchUpdateDocumentResponse'
    { _budrDocumentId = Nothing
    , _budrReplies = Nothing
    , _budrWriteControl = Nothing
    }


-- | The ID of the document to which the updates were applied to.
budrDocumentId :: Lens' BatchUpdateDocumentResponse (Maybe Text)
budrDocumentId
  = lens _budrDocumentId
      (\ s a -> s{_budrDocumentId = a})

-- | The reply of the updates. This maps 1:1 with the updates, although
-- replies to some requests may be empty.
budrReplies :: Lens' BatchUpdateDocumentResponse [Response]
budrReplies
  = lens _budrReplies (\ s a -> s{_budrReplies = a}) .
      _Default
      . _Coerce

-- | The updated write control after applying the request.
budrWriteControl :: Lens' BatchUpdateDocumentResponse (Maybe WriteControl)
budrWriteControl
  = lens _budrWriteControl
      (\ s a -> s{_budrWriteControl = a})

instance FromJSON BatchUpdateDocumentResponse where
        parseJSON
          = withObject "BatchUpdateDocumentResponse"
              (\ o ->
                 BatchUpdateDocumentResponse' <$>
                   (o .:? "documentId") <*> (o .:? "replies" .!= mempty)
                     <*> (o .:? "writeControl"))

instance ToJSON BatchUpdateDocumentResponse where
        toJSON BatchUpdateDocumentResponse'{..}
          = object
              (catMaybes
                 [("documentId" .=) <$> _budrDocumentId,
                  ("replies" .=) <$> _budrReplies,
                  ("writeControl" .=) <$> _budrWriteControl])

-- | Styles that apply to a table.
--
-- /See:/ 'tableStyle' smart constructor.
newtype TableStyle =
  TableStyle'
    { _tsTableColumnProperties :: Maybe [TableColumnProperties]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsTableColumnProperties'
tableStyle
    :: TableStyle
tableStyle = TableStyle' {_tsTableColumnProperties = Nothing}


-- | The properties of each column. Note that in Docs, tables contain rows
-- and rows contain cells, similar to HTML. So the properties for a row can
-- be found on the row\'s table_row_style.
tsTableColumnProperties :: Lens' TableStyle [TableColumnProperties]
tsTableColumnProperties
  = lens _tsTableColumnProperties
      (\ s a -> s{_tsTableColumnProperties = a})
      . _Default
      . _Coerce

instance FromJSON TableStyle where
        parseJSON
          = withObject "TableStyle"
              (\ o ->
                 TableStyle' <$>
                   (o .:? "tableColumnProperties" .!= mempty))

instance ToJSON TableStyle where
        toJSON TableStyle'{..}
          = object
              (catMaybes
                 [("tableColumnProperties" .=) <$>
                    _tsTableColumnProperties])

-- | Unmerges cells in a Table.
--
-- /See:/ 'unmergeTableCellsRequest' smart constructor.
newtype UnmergeTableCellsRequest =
  UnmergeTableCellsRequest'
    { _utcrTableRange :: Maybe TableRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UnmergeTableCellsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utcrTableRange'
unmergeTableCellsRequest
    :: UnmergeTableCellsRequest
unmergeTableCellsRequest = UnmergeTableCellsRequest' {_utcrTableRange = Nothing}


-- | The table range specifying which cells of the table to unmerge. All
-- merged cells in this range will be unmerged, and cells that are already
-- unmerged will not be affected. If the range has no merged cells, the
-- request will do nothing. If there is text in any of the merged cells,
-- the text will remain in the \"head\" cell of the resulting block of
-- unmerged cells. The \"head\" cell is the upper-left cell when the
-- content direction is from left to right, and the upper-right otherwise.
utcrTableRange :: Lens' UnmergeTableCellsRequest (Maybe TableRange)
utcrTableRange
  = lens _utcrTableRange
      (\ s a -> s{_utcrTableRange = a})

instance FromJSON UnmergeTableCellsRequest where
        parseJSON
          = withObject "UnmergeTableCellsRequest"
              (\ o ->
                 UnmergeTableCellsRequest' <$> (o .:? "tableRange"))

instance ToJSON UnmergeTableCellsRequest where
        toJSON UnmergeTableCellsRequest'{..}
          = object
              (catMaybes [("tableRange" .=) <$> _utcrTableRange])

-- | Properties specific to a RichLink.
--
-- /See:/ 'richLinkProperties' smart constructor.
data RichLinkProperties =
  RichLinkProperties'
    { _rlpURI :: !(Maybe Text)
    , _rlpMimeType :: !(Maybe Text)
    , _rlpTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RichLinkProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlpURI'
--
-- * 'rlpMimeType'
--
-- * 'rlpTitle'
richLinkProperties
    :: RichLinkProperties
richLinkProperties =
  RichLinkProperties'
    {_rlpURI = Nothing, _rlpMimeType = Nothing, _rlpTitle = Nothing}


-- | Output only. The URI to the RichLink. This is always present.
rlpURI :: Lens' RichLinkProperties (Maybe Text)
rlpURI = lens _rlpURI (\ s a -> s{_rlpURI = a})

-- | Output only. The [MIME
-- type](https:\/\/developers.google.com\/drive\/api\/v3\/mime-types) of
-- the RichLink, if there is one (i.e., when it is a file in Drive).
rlpMimeType :: Lens' RichLinkProperties (Maybe Text)
rlpMimeType
  = lens _rlpMimeType (\ s a -> s{_rlpMimeType = a})

-- | Output only. The title of the RichLink as displayed in the link. This
-- title matches the title of the linked resource at the time of the
-- insertion or last update of the link. This field is always present.
rlpTitle :: Lens' RichLinkProperties (Maybe Text)
rlpTitle = lens _rlpTitle (\ s a -> s{_rlpTitle = a})

instance FromJSON RichLinkProperties where
        parseJSON
          = withObject "RichLinkProperties"
              (\ o ->
                 RichLinkProperties' <$>
                   (o .:? "uri") <*> (o .:? "mimeType") <*>
                     (o .:? "title"))

instance ToJSON RichLinkProperties where
        toJSON RichLinkProperties'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _rlpURI,
                  ("mimeType" .=) <$> _rlpMimeType,
                  ("title" .=) <$> _rlpTitle])

-- | Updates the TableColumnProperties of columns in a table.
--
-- /See:/ 'updateTableColumnPropertiesRequest' smart constructor.
data UpdateTableColumnPropertiesRequest =
  UpdateTableColumnPropertiesRequest'
    { _utcprTableStartLocation :: !(Maybe Location)
    , _utcprTableColumnProperties :: !(Maybe TableColumnProperties)
    , _utcprFields :: !(Maybe GFieldMask)
    , _utcprColumnIndices :: !(Maybe [Textual Int32])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateTableColumnPropertiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utcprTableStartLocation'
--
-- * 'utcprTableColumnProperties'
--
-- * 'utcprFields'
--
-- * 'utcprColumnIndices'
updateTableColumnPropertiesRequest
    :: UpdateTableColumnPropertiesRequest
updateTableColumnPropertiesRequest =
  UpdateTableColumnPropertiesRequest'
    { _utcprTableStartLocation = Nothing
    , _utcprTableColumnProperties = Nothing
    , _utcprFields = Nothing
    , _utcprColumnIndices = Nothing
    }


-- | The location where the table starts in the document.
utcprTableStartLocation :: Lens' UpdateTableColumnPropertiesRequest (Maybe Location)
utcprTableStartLocation
  = lens _utcprTableStartLocation
      (\ s a -> s{_utcprTableStartLocation = a})

-- | The table column properties to update. If the value of
-- \`table_column_properties#width\` is less than 5 points (5\/72 inch), a
-- 400 bad request error is returned.
utcprTableColumnProperties :: Lens' UpdateTableColumnPropertiesRequest (Maybe TableColumnProperties)
utcprTableColumnProperties
  = lens _utcprTableColumnProperties
      (\ s a -> s{_utcprTableColumnProperties = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`tableColumnProperties\` is implied and should not be
-- specified. A single \`\"*\"\` can be used as short-hand for listing
-- every field. For example to update the column width, set \`fields\` to
-- \`\"width\"\`.
utcprFields :: Lens' UpdateTableColumnPropertiesRequest (Maybe GFieldMask)
utcprFields
  = lens _utcprFields (\ s a -> s{_utcprFields = a})

-- | The list of zero-based column indices whose property should be updated.
-- If no indices are specified, all columns will be updated.
utcprColumnIndices :: Lens' UpdateTableColumnPropertiesRequest [Int32]
utcprColumnIndices
  = lens _utcprColumnIndices
      (\ s a -> s{_utcprColumnIndices = a})
      . _Default
      . _Coerce

instance FromJSON UpdateTableColumnPropertiesRequest
         where
        parseJSON
          = withObject "UpdateTableColumnPropertiesRequest"
              (\ o ->
                 UpdateTableColumnPropertiesRequest' <$>
                   (o .:? "tableStartLocation") <*>
                     (o .:? "tableColumnProperties")
                     <*> (o .:? "fields")
                     <*> (o .:? "columnIndices" .!= mempty))

instance ToJSON UpdateTableColumnPropertiesRequest
         where
        toJSON UpdateTableColumnPropertiesRequest'{..}
          = object
              (catMaybes
                 [("tableStartLocation" .=) <$>
                    _utcprTableStartLocation,
                  ("tableColumnProperties" .=) <$>
                    _utcprTableColumnProperties,
                  ("fields" .=) <$> _utcprFields,
                  ("columnIndices" .=) <$> _utcprColumnIndices])

-- | A ParagraphElement representing a footnote reference. A footnote
-- reference is the inline content rendered with a number and is used to
-- identify the footnote.
--
-- /See:/ 'footNoteReference' smart constructor.
data FootNoteReference =
  FootNoteReference'
    { _fnrSuggestedInsertionIds :: !(Maybe [Text])
    , _fnrSuggestedTextStyleChanges :: !(Maybe FootNoteReferenceSuggestedTextStyleChanges)
    , _fnrFootNoteId :: !(Maybe Text)
    , _fnrSuggestedDeletionIds :: !(Maybe [Text])
    , _fnrTextStyle :: !(Maybe TextStyle)
    , _fnrFootNoteNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FootNoteReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fnrSuggestedInsertionIds'
--
-- * 'fnrSuggestedTextStyleChanges'
--
-- * 'fnrFootNoteId'
--
-- * 'fnrSuggestedDeletionIds'
--
-- * 'fnrTextStyle'
--
-- * 'fnrFootNoteNumber'
footNoteReference
    :: FootNoteReference
footNoteReference =
  FootNoteReference'
    { _fnrSuggestedInsertionIds = Nothing
    , _fnrSuggestedTextStyleChanges = Nothing
    , _fnrFootNoteId = Nothing
    , _fnrSuggestedDeletionIds = Nothing
    , _fnrTextStyle = Nothing
    , _fnrFootNoteNumber = Nothing
    }


-- | The suggested insertion IDs. A FootnoteReference may have multiple
-- insertion IDs if it is a nested suggested change. If empty, then this is
-- not a suggested insertion.
fnrSuggestedInsertionIds :: Lens' FootNoteReference [Text]
fnrSuggestedInsertionIds
  = lens _fnrSuggestedInsertionIds
      (\ s a -> s{_fnrSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The suggested text style changes to this FootnoteReference, keyed by
-- suggestion ID.
fnrSuggestedTextStyleChanges :: Lens' FootNoteReference (Maybe FootNoteReferenceSuggestedTextStyleChanges)
fnrSuggestedTextStyleChanges
  = lens _fnrSuggestedTextStyleChanges
      (\ s a -> s{_fnrSuggestedTextStyleChanges = a})

-- | The ID of the footnote that contains the content of this footnote
-- reference.
fnrFootNoteId :: Lens' FootNoteReference (Maybe Text)
fnrFootNoteId
  = lens _fnrFootNoteId
      (\ s a -> s{_fnrFootNoteId = a})

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
fnrSuggestedDeletionIds :: Lens' FootNoteReference [Text]
fnrSuggestedDeletionIds
  = lens _fnrSuggestedDeletionIds
      (\ s a -> s{_fnrSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The text style of this FootnoteReference.
fnrTextStyle :: Lens' FootNoteReference (Maybe TextStyle)
fnrTextStyle
  = lens _fnrTextStyle (\ s a -> s{_fnrTextStyle = a})

-- | The rendered number of this footnote.
fnrFootNoteNumber :: Lens' FootNoteReference (Maybe Text)
fnrFootNoteNumber
  = lens _fnrFootNoteNumber
      (\ s a -> s{_fnrFootNoteNumber = a})

instance FromJSON FootNoteReference where
        parseJSON
          = withObject "FootNoteReference"
              (\ o ->
                 FootNoteReference' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "suggestedTextStyleChanges")
                     <*> (o .:? "footnoteId")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "textStyle")
                     <*> (o .:? "footnoteNumber"))

instance ToJSON FootNoteReference where
        toJSON FootNoteReference'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _fnrSuggestedInsertionIds,
                  ("suggestedTextStyleChanges" .=) <$>
                    _fnrSuggestedTextStyleChanges,
                  ("footnoteId" .=) <$> _fnrFootNoteId,
                  ("suggestedDeletionIds" .=) <$>
                    _fnrSuggestedDeletionIds,
                  ("textStyle" .=) <$> _fnrTextStyle,
                  ("footnoteNumber" .=) <$> _fnrFootNoteNumber])

-- | A ParagraphElement representing a column break. A column break makes the
-- subsequent text start at the top of the next column.
--
-- /See:/ 'columnBreak' smart constructor.
data ColumnBreak =
  ColumnBreak'
    { _cbSuggestedInsertionIds :: !(Maybe [Text])
    , _cbSuggestedTextStyleChanges :: !(Maybe ColumnBreakSuggestedTextStyleChanges)
    , _cbSuggestedDeletionIds :: !(Maybe [Text])
    , _cbTextStyle :: !(Maybe TextStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ColumnBreak' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbSuggestedInsertionIds'
--
-- * 'cbSuggestedTextStyleChanges'
--
-- * 'cbSuggestedDeletionIds'
--
-- * 'cbTextStyle'
columnBreak
    :: ColumnBreak
columnBreak =
  ColumnBreak'
    { _cbSuggestedInsertionIds = Nothing
    , _cbSuggestedTextStyleChanges = Nothing
    , _cbSuggestedDeletionIds = Nothing
    , _cbTextStyle = Nothing
    }


-- | The suggested insertion IDs. A ColumnBreak may have multiple insertion
-- IDs if it is a nested suggested change. If empty, then this is not a
-- suggested insertion.
cbSuggestedInsertionIds :: Lens' ColumnBreak [Text]
cbSuggestedInsertionIds
  = lens _cbSuggestedInsertionIds
      (\ s a -> s{_cbSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The suggested text style changes to this ColumnBreak, keyed by
-- suggestion ID.
cbSuggestedTextStyleChanges :: Lens' ColumnBreak (Maybe ColumnBreakSuggestedTextStyleChanges)
cbSuggestedTextStyleChanges
  = lens _cbSuggestedTextStyleChanges
      (\ s a -> s{_cbSuggestedTextStyleChanges = a})

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
cbSuggestedDeletionIds :: Lens' ColumnBreak [Text]
cbSuggestedDeletionIds
  = lens _cbSuggestedDeletionIds
      (\ s a -> s{_cbSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The text style of this ColumnBreak. Similar to text content, like text
-- runs and footnote references, the text style of a column break can
-- affect content layout as well as the styling of text inserted adjacent
-- to it.
cbTextStyle :: Lens' ColumnBreak (Maybe TextStyle)
cbTextStyle
  = lens _cbTextStyle (\ s a -> s{_cbTextStyle = a})

instance FromJSON ColumnBreak where
        parseJSON
          = withObject "ColumnBreak"
              (\ o ->
                 ColumnBreak' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "suggestedTextStyleChanges")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "textStyle"))

instance ToJSON ColumnBreak where
        toJSON ColumnBreak'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _cbSuggestedInsertionIds,
                  ("suggestedTextStyleChanges" .=) <$>
                    _cbSuggestedTextStyleChanges,
                  ("suggestedDeletionIds" .=) <$>
                    _cbSuggestedDeletionIds,
                  ("textStyle" .=) <$> _cbTextStyle])

-- | The suggested changes to the inline object properties, keyed by
-- suggestion ID.
--
-- /See:/ 'inlineObjectSuggestedInlineObjectPropertiesChanges' smart constructor.
newtype InlineObjectSuggestedInlineObjectPropertiesChanges =
  InlineObjectSuggestedInlineObjectPropertiesChanges'
    { _iosiopcAddtional :: HashMap Text SuggestedInlineObjectProperties
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InlineObjectSuggestedInlineObjectPropertiesChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iosiopcAddtional'
inlineObjectSuggestedInlineObjectPropertiesChanges
    :: HashMap Text SuggestedInlineObjectProperties -- ^ 'iosiopcAddtional'
    -> InlineObjectSuggestedInlineObjectPropertiesChanges
inlineObjectSuggestedInlineObjectPropertiesChanges pIosiopcAddtional_ =
  InlineObjectSuggestedInlineObjectPropertiesChanges'
    {_iosiopcAddtional = _Coerce # pIosiopcAddtional_}


iosiopcAddtional :: Lens' InlineObjectSuggestedInlineObjectPropertiesChanges (HashMap Text SuggestedInlineObjectProperties)
iosiopcAddtional
  = lens _iosiopcAddtional
      (\ s a -> s{_iosiopcAddtional = a})
      . _Coerce

instance FromJSON
           InlineObjectSuggestedInlineObjectPropertiesChanges
         where
        parseJSON
          = withObject
              "InlineObjectSuggestedInlineObjectPropertiesChanges"
              (\ o ->
                 InlineObjectSuggestedInlineObjectPropertiesChanges'
                   <$> (parseJSONObject o))

instance ToJSON
           InlineObjectSuggestedInlineObjectPropertiesChanges
         where
        toJSON = toJSON . _iosiopcAddtional

-- | A ParagraphElement representing an equation.
--
-- /See:/ 'equation' smart constructor.
data Equation =
  Equation'
    { _eSuggestedInsertionIds :: !(Maybe [Text])
    , _eSuggestedDeletionIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Equation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eSuggestedInsertionIds'
--
-- * 'eSuggestedDeletionIds'
equation
    :: Equation
equation =
  Equation'
    {_eSuggestedInsertionIds = Nothing, _eSuggestedDeletionIds = Nothing}


-- | The suggested insertion IDs. A Equation may have multiple insertion IDs
-- if it is a nested suggested change. If empty, then this is not a
-- suggested insertion.
eSuggestedInsertionIds :: Lens' Equation [Text]
eSuggestedInsertionIds
  = lens _eSuggestedInsertionIds
      (\ s a -> s{_eSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
eSuggestedDeletionIds :: Lens' Equation [Text]
eSuggestedDeletionIds
  = lens _eSuggestedDeletionIds
      (\ s a -> s{_eSuggestedDeletionIds = a})
      . _Default
      . _Coerce

instance FromJSON Equation where
        parseJSON
          = withObject "Equation"
              (\ o ->
                 Equation' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "suggestedDeletionIds" .!= mempty))

instance ToJSON Equation where
        toJSON Equation'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _eSuggestedInsertionIds,
                  ("suggestedDeletionIds" .=) <$>
                    _eSuggestedDeletionIds])

-- | A collection of Ranges with the same named range ID. Named ranges allow
-- developers to associate parts of a document with an arbitrary
-- user-defined label so their contents can be programmatically read or
-- edited at a later time. A document can contain multiple named ranges
-- with the same name, but every named range has a unique ID. A named range
-- is created with a single Range, and content inserted inside a named
-- range generally expands that range. However, certain document changes
-- can cause the range to be split into multiple ranges. Named ranges are
-- not private. All applications and collaborators that have access to the
-- document can see its named ranges.
--
-- /See:/ 'namedRange' smart constructor.
data NamedRange =
  NamedRange'
    { _nNamedRangeId :: !(Maybe Text)
    , _nRanges :: !(Maybe [Range])
    , _nName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamedRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nNamedRangeId'
--
-- * 'nRanges'
--
-- * 'nName'
namedRange
    :: NamedRange
namedRange =
  NamedRange' {_nNamedRangeId = Nothing, _nRanges = Nothing, _nName = Nothing}


-- | The ID of the named range.
nNamedRangeId :: Lens' NamedRange (Maybe Text)
nNamedRangeId
  = lens _nNamedRangeId
      (\ s a -> s{_nNamedRangeId = a})

-- | The ranges that belong to this named range.
nRanges :: Lens' NamedRange [Range]
nRanges
  = lens _nRanges (\ s a -> s{_nRanges = a}) . _Default
      . _Coerce

-- | The name of the named range.
nName :: Lens' NamedRange (Maybe Text)
nName = lens _nName (\ s a -> s{_nName = a})

instance FromJSON NamedRange where
        parseJSON
          = withObject "NamedRange"
              (\ o ->
                 NamedRange' <$>
                   (o .:? "namedRangeId") <*>
                     (o .:? "ranges" .!= mempty)
                     <*> (o .:? "name"))

instance ToJSON NamedRange where
        toJSON NamedRange'{..}
          = object
              (catMaybes
                 [("namedRangeId" .=) <$> _nNamedRangeId,
                  ("ranges" .=) <$> _nRanges, ("name" .=) <$> _nName])

-- | Properties specific to a linked Person.
--
-- /See:/ 'personProperties' smart constructor.
data PersonProperties =
  PersonProperties'
    { _ppEmail :: !(Maybe Text)
    , _ppName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppEmail'
--
-- * 'ppName'
personProperties
    :: PersonProperties
personProperties = PersonProperties' {_ppEmail = Nothing, _ppName = Nothing}


-- | Output only. The email address linked to this Person. This field is
-- always present.
ppEmail :: Lens' PersonProperties (Maybe Text)
ppEmail = lens _ppEmail (\ s a -> s{_ppEmail = a})

-- | Output only. The name of the person if it is displayed in the link text
-- instead of the person\'s email address.
ppName :: Lens' PersonProperties (Maybe Text)
ppName = lens _ppName (\ s a -> s{_ppName = a})

instance FromJSON PersonProperties where
        parseJSON
          = withObject "PersonProperties"
              (\ o ->
                 PersonProperties' <$>
                   (o .:? "email") <*> (o .:? "name"))

instance ToJSON PersonProperties where
        toJSON PersonProperties'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _ppEmail, ("name" .=) <$> _ppName])

-- | A mask that indicates which of the fields on the base CropProperties
-- have been changed in this suggestion. For any field set to true, there
-- is a new suggested value.
--
-- /See:/ 'cropPropertiesSuggestionState' smart constructor.
data CropPropertiesSuggestionState =
  CropPropertiesSuggestionState'
    { _cpssAngleSuggested :: !(Maybe Bool)
    , _cpssOffSetRightSuggested :: !(Maybe Bool)
    , _cpssOffSetBottomSuggested :: !(Maybe Bool)
    , _cpssOffSetTopSuggested :: !(Maybe Bool)
    , _cpssOffSetLeftSuggested :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CropPropertiesSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpssAngleSuggested'
--
-- * 'cpssOffSetRightSuggested'
--
-- * 'cpssOffSetBottomSuggested'
--
-- * 'cpssOffSetTopSuggested'
--
-- * 'cpssOffSetLeftSuggested'
cropPropertiesSuggestionState
    :: CropPropertiesSuggestionState
cropPropertiesSuggestionState =
  CropPropertiesSuggestionState'
    { _cpssAngleSuggested = Nothing
    , _cpssOffSetRightSuggested = Nothing
    , _cpssOffSetBottomSuggested = Nothing
    , _cpssOffSetTopSuggested = Nothing
    , _cpssOffSetLeftSuggested = Nothing
    }


-- | Indicates if there was a suggested change to angle.
cpssAngleSuggested :: Lens' CropPropertiesSuggestionState (Maybe Bool)
cpssAngleSuggested
  = lens _cpssAngleSuggested
      (\ s a -> s{_cpssAngleSuggested = a})

-- | Indicates if there was a suggested change to offset_right.
cpssOffSetRightSuggested :: Lens' CropPropertiesSuggestionState (Maybe Bool)
cpssOffSetRightSuggested
  = lens _cpssOffSetRightSuggested
      (\ s a -> s{_cpssOffSetRightSuggested = a})

-- | Indicates if there was a suggested change to offset_bottom.
cpssOffSetBottomSuggested :: Lens' CropPropertiesSuggestionState (Maybe Bool)
cpssOffSetBottomSuggested
  = lens _cpssOffSetBottomSuggested
      (\ s a -> s{_cpssOffSetBottomSuggested = a})

-- | Indicates if there was a suggested change to offset_top.
cpssOffSetTopSuggested :: Lens' CropPropertiesSuggestionState (Maybe Bool)
cpssOffSetTopSuggested
  = lens _cpssOffSetTopSuggested
      (\ s a -> s{_cpssOffSetTopSuggested = a})

-- | Indicates if there was a suggested change to offset_left.
cpssOffSetLeftSuggested :: Lens' CropPropertiesSuggestionState (Maybe Bool)
cpssOffSetLeftSuggested
  = lens _cpssOffSetLeftSuggested
      (\ s a -> s{_cpssOffSetLeftSuggested = a})

instance FromJSON CropPropertiesSuggestionState where
        parseJSON
          = withObject "CropPropertiesSuggestionState"
              (\ o ->
                 CropPropertiesSuggestionState' <$>
                   (o .:? "angleSuggested") <*>
                     (o .:? "offsetRightSuggested")
                     <*> (o .:? "offsetBottomSuggested")
                     <*> (o .:? "offsetTopSuggested")
                     <*> (o .:? "offsetLeftSuggested"))

instance ToJSON CropPropertiesSuggestionState where
        toJSON CropPropertiesSuggestionState'{..}
          = object
              (catMaybes
                 [("angleSuggested" .=) <$> _cpssAngleSuggested,
                  ("offsetRightSuggested" .=) <$>
                    _cpssOffSetRightSuggested,
                  ("offsetBottomSuggested" .=) <$>
                    _cpssOffSetBottomSuggested,
                  ("offsetTopSuggested" .=) <$>
                    _cpssOffSetTopSuggested,
                  ("offsetLeftSuggested" .=) <$>
                    _cpssOffSetLeftSuggested])

-- | A ParagraphElement that represents a run of text that all has the same
-- styling.
--
-- /See:/ 'textRun' smart constructor.
data TextRun =
  TextRun'
    { _trSuggestedInsertionIds :: !(Maybe [Text])
    , _trSuggestedTextStyleChanges :: !(Maybe TextRunSuggestedTextStyleChanges)
    , _trContent :: !(Maybe Text)
    , _trSuggestedDeletionIds :: !(Maybe [Text])
    , _trTextStyle :: !(Maybe TextStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trSuggestedInsertionIds'
--
-- * 'trSuggestedTextStyleChanges'
--
-- * 'trContent'
--
-- * 'trSuggestedDeletionIds'
--
-- * 'trTextStyle'
textRun
    :: TextRun
textRun =
  TextRun'
    { _trSuggestedInsertionIds = Nothing
    , _trSuggestedTextStyleChanges = Nothing
    , _trContent = Nothing
    , _trSuggestedDeletionIds = Nothing
    , _trTextStyle = Nothing
    }


-- | The suggested insertion IDs. A TextRun may have multiple insertion IDs
-- if it is a nested suggested change. If empty, then this is not a
-- suggested insertion.
trSuggestedInsertionIds :: Lens' TextRun [Text]
trSuggestedInsertionIds
  = lens _trSuggestedInsertionIds
      (\ s a -> s{_trSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The suggested text style changes to this run, keyed by suggestion ID.
trSuggestedTextStyleChanges :: Lens' TextRun (Maybe TextRunSuggestedTextStyleChanges)
trSuggestedTextStyleChanges
  = lens _trSuggestedTextStyleChanges
      (\ s a -> s{_trSuggestedTextStyleChanges = a})

-- | The text of this run. Any non-text elements in the run are replaced with
-- the Unicode character U+E907.
trContent :: Lens' TextRun (Maybe Text)
trContent
  = lens _trContent (\ s a -> s{_trContent = a})

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
trSuggestedDeletionIds :: Lens' TextRun [Text]
trSuggestedDeletionIds
  = lens _trSuggestedDeletionIds
      (\ s a -> s{_trSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The text style of this run.
trTextStyle :: Lens' TextRun (Maybe TextStyle)
trTextStyle
  = lens _trTextStyle (\ s a -> s{_trTextStyle = a})

instance FromJSON TextRun where
        parseJSON
          = withObject "TextRun"
              (\ o ->
                 TextRun' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "suggestedTextStyleChanges")
                     <*> (o .:? "content")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "textStyle"))

instance ToJSON TextRun where
        toJSON TextRun'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _trSuggestedInsertionIds,
                  ("suggestedTextStyleChanges" .=) <$>
                    _trSuggestedTextStyleChanges,
                  ("content" .=) <$> _trContent,
                  ("suggestedDeletionIds" .=) <$>
                    _trSuggestedDeletionIds,
                  ("textStyle" .=) <$> _trTextStyle])

-- | The contents and style of a row in a Table.
--
-- /See:/ 'tableRow' smart constructor.
data TableRow =
  TableRow'
    { _tSuggestedInsertionIds :: !(Maybe [Text])
    , _tTableCells :: !(Maybe [TableCell])
    , _tEndIndex :: !(Maybe (Textual Int32))
    , _tSuggestedDeletionIds :: !(Maybe [Text])
    , _tSuggestedTableRowStyleChanges :: !(Maybe TableRowSuggestedTableRowStyleChanges)
    , _tTableRowStyle :: !(Maybe TableRowStyle)
    , _tStartIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tSuggestedInsertionIds'
--
-- * 'tTableCells'
--
-- * 'tEndIndex'
--
-- * 'tSuggestedDeletionIds'
--
-- * 'tSuggestedTableRowStyleChanges'
--
-- * 'tTableRowStyle'
--
-- * 'tStartIndex'
tableRow
    :: TableRow
tableRow =
  TableRow'
    { _tSuggestedInsertionIds = Nothing
    , _tTableCells = Nothing
    , _tEndIndex = Nothing
    , _tSuggestedDeletionIds = Nothing
    , _tSuggestedTableRowStyleChanges = Nothing
    , _tTableRowStyle = Nothing
    , _tStartIndex = Nothing
    }


-- | The suggested insertion IDs. A TableRow may have multiple insertion IDs
-- if it is a nested suggested change. If empty, then this is not a
-- suggested insertion.
tSuggestedInsertionIds :: Lens' TableRow [Text]
tSuggestedInsertionIds
  = lens _tSuggestedInsertionIds
      (\ s a -> s{_tSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The contents and style of each cell in this row. It is possible for a
-- table to be non-rectangular, so some rows may have a different number of
-- cells than other rows in the same table.
tTableCells :: Lens' TableRow [TableCell]
tTableCells
  = lens _tTableCells (\ s a -> s{_tTableCells = a}) .
      _Default
      . _Coerce

-- | The zero-based end index of this row, exclusive, in UTF-16 code units.
tEndIndex :: Lens' TableRow (Maybe Int32)
tEndIndex
  = lens _tEndIndex (\ s a -> s{_tEndIndex = a}) .
      mapping _Coerce

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
tSuggestedDeletionIds :: Lens' TableRow [Text]
tSuggestedDeletionIds
  = lens _tSuggestedDeletionIds
      (\ s a -> s{_tSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The suggested style changes to this row, keyed by suggestion ID.
tSuggestedTableRowStyleChanges :: Lens' TableRow (Maybe TableRowSuggestedTableRowStyleChanges)
tSuggestedTableRowStyleChanges
  = lens _tSuggestedTableRowStyleChanges
      (\ s a -> s{_tSuggestedTableRowStyleChanges = a})

-- | The style of the table row.
tTableRowStyle :: Lens' TableRow (Maybe TableRowStyle)
tTableRowStyle
  = lens _tTableRowStyle
      (\ s a -> s{_tTableRowStyle = a})

-- | The zero-based start index of this row, in UTF-16 code units.
tStartIndex :: Lens' TableRow (Maybe Int32)
tStartIndex
  = lens _tStartIndex (\ s a -> s{_tStartIndex = a}) .
      mapping _Coerce

instance FromJSON TableRow where
        parseJSON
          = withObject "TableRow"
              (\ o ->
                 TableRow' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "tableCells" .!= mempty)
                     <*> (o .:? "endIndex")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "suggestedTableRowStyleChanges")
                     <*> (o .:? "tableRowStyle")
                     <*> (o .:? "startIndex"))

instance ToJSON TableRow where
        toJSON TableRow'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _tSuggestedInsertionIds,
                  ("tableCells" .=) <$> _tTableCells,
                  ("endIndex" .=) <$> _tEndIndex,
                  ("suggestedDeletionIds" .=) <$>
                    _tSuggestedDeletionIds,
                  ("suggestedTableRowStyleChanges" .=) <$>
                    _tSuggestedTableRowStyleChanges,
                  ("tableRowStyle" .=) <$> _tTableRowStyle,
                  ("startIndex" .=) <$> _tStartIndex])

-- | Represents a font family and weight of text.
--
-- /See:/ 'weightedFontFamily' smart constructor.
data WeightedFontFamily =
  WeightedFontFamily'
    { _wffFontFamily :: !(Maybe Text)
    , _wffWeight :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WeightedFontFamily' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wffFontFamily'
--
-- * 'wffWeight'
weightedFontFamily
    :: WeightedFontFamily
weightedFontFamily =
  WeightedFontFamily' {_wffFontFamily = Nothing, _wffWeight = Nothing}


-- | The font family of the text. The font family can be any font from the
-- Font menu in Docs or from [Google Fonts] (https:\/\/fonts.google.com\/).
-- If the font name is unrecognized, the text is rendered in \`Arial\`.
wffFontFamily :: Lens' WeightedFontFamily (Maybe Text)
wffFontFamily
  = lens _wffFontFamily
      (\ s a -> s{_wffFontFamily = a})

-- | The weight of the font. This field can have any value that is a multiple
-- of \`100\` between \`100\` and \`900\`, inclusive. This range
-- corresponds to the numerical values described in the CSS 2.1
-- Specification, [section
-- 15.6](https:\/\/www.w3.org\/TR\/CSS21\/fonts.html#font-boldness), with
-- non-numerical values disallowed. The default value is \`400\`
-- (\"normal\"). The font weight makes up just one component of the
-- rendered font weight. The rendered weight is determined by a combination
-- of the \`weight\` and the text style\'s resolved \`bold\` value, after
-- accounting for inheritance: * If the text is bold and the weight is less
-- than \`400\`, the rendered weight is 400. * If the text is bold and the
-- weight is greater than or equal to \`400\` but is less than \`700\`, the
-- rendered weight is \`700\`. * If the weight is greater than or equal to
-- \`700\`, the rendered weight is equal to the weight. * If the text is
-- not bold, the rendered weight is equal to the weight.
wffWeight :: Lens' WeightedFontFamily (Maybe Int32)
wffWeight
  = lens _wffWeight (\ s a -> s{_wffWeight = a}) .
      mapping _Coerce

instance FromJSON WeightedFontFamily where
        parseJSON
          = withObject "WeightedFontFamily"
              (\ o ->
                 WeightedFontFamily' <$>
                   (o .:? "fontFamily") <*> (o .:? "weight"))

instance ToJSON WeightedFontFamily where
        toJSON WeightedFontFamily'{..}
          = object
              (catMaybes
                 [("fontFamily" .=) <$> _wffFontFamily,
                  ("weight" .=) <$> _wffWeight])

-- | A ParagraphElement representing a page break. A page break makes the
-- subsequent text start at the top of the next page.
--
-- /See:/ 'pageBreak' smart constructor.
data PageBreak =
  PageBreak'
    { _pbSuggestedInsertionIds :: !(Maybe [Text])
    , _pbSuggestedTextStyleChanges :: !(Maybe PageBreakSuggestedTextStyleChanges)
    , _pbSuggestedDeletionIds :: !(Maybe [Text])
    , _pbTextStyle :: !(Maybe TextStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PageBreak' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbSuggestedInsertionIds'
--
-- * 'pbSuggestedTextStyleChanges'
--
-- * 'pbSuggestedDeletionIds'
--
-- * 'pbTextStyle'
pageBreak
    :: PageBreak
pageBreak =
  PageBreak'
    { _pbSuggestedInsertionIds = Nothing
    , _pbSuggestedTextStyleChanges = Nothing
    , _pbSuggestedDeletionIds = Nothing
    , _pbTextStyle = Nothing
    }


-- | The suggested insertion IDs. A PageBreak may have multiple insertion IDs
-- if it is a nested suggested change. If empty, then this is not a
-- suggested insertion.
pbSuggestedInsertionIds :: Lens' PageBreak [Text]
pbSuggestedInsertionIds
  = lens _pbSuggestedInsertionIds
      (\ s a -> s{_pbSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The suggested text style changes to this PageBreak, keyed by suggestion
-- ID.
pbSuggestedTextStyleChanges :: Lens' PageBreak (Maybe PageBreakSuggestedTextStyleChanges)
pbSuggestedTextStyleChanges
  = lens _pbSuggestedTextStyleChanges
      (\ s a -> s{_pbSuggestedTextStyleChanges = a})

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
pbSuggestedDeletionIds :: Lens' PageBreak [Text]
pbSuggestedDeletionIds
  = lens _pbSuggestedDeletionIds
      (\ s a -> s{_pbSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The text style of this PageBreak. Similar to text content, like text
-- runs and footnote references, the text style of a page break can affect
-- content layout as well as the styling of text inserted adjacent to it.
pbTextStyle :: Lens' PageBreak (Maybe TextStyle)
pbTextStyle
  = lens _pbTextStyle (\ s a -> s{_pbTextStyle = a})

instance FromJSON PageBreak where
        parseJSON
          = withObject "PageBreak"
              (\ o ->
                 PageBreak' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "suggestedTextStyleChanges")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "textStyle"))

instance ToJSON PageBreak where
        toJSON PageBreak'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _pbSuggestedInsertionIds,
                  ("suggestedTextStyleChanges" .=) <$>
                    _pbSuggestedTextStyleChanges,
                  ("suggestedDeletionIds" .=) <$>
                    _pbSuggestedDeletionIds,
                  ("textStyle" .=) <$> _pbTextStyle])

-- | An object that appears inline with text. An InlineObject contains an
-- EmbeddedObject such as an image.
--
-- /See:/ 'inlineObject' smart constructor.
data InlineObject =
  InlineObject'
    { _ioSuggestedInsertionId :: !(Maybe Text)
    , _ioInlineObjectProperties :: !(Maybe InlineObjectProperties)
    , _ioObjectId :: !(Maybe Text)
    , _ioSuggestedDeletionIds :: !(Maybe [Text])
    , _ioSuggestedInlineObjectPropertiesChanges :: !(Maybe InlineObjectSuggestedInlineObjectPropertiesChanges)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InlineObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ioSuggestedInsertionId'
--
-- * 'ioInlineObjectProperties'
--
-- * 'ioObjectId'
--
-- * 'ioSuggestedDeletionIds'
--
-- * 'ioSuggestedInlineObjectPropertiesChanges'
inlineObject
    :: InlineObject
inlineObject =
  InlineObject'
    { _ioSuggestedInsertionId = Nothing
    , _ioInlineObjectProperties = Nothing
    , _ioObjectId = Nothing
    , _ioSuggestedDeletionIds = Nothing
    , _ioSuggestedInlineObjectPropertiesChanges = Nothing
    }


-- | The suggested insertion ID. If empty, then this is not a suggested
-- insertion.
ioSuggestedInsertionId :: Lens' InlineObject (Maybe Text)
ioSuggestedInsertionId
  = lens _ioSuggestedInsertionId
      (\ s a -> s{_ioSuggestedInsertionId = a})

-- | The properties of this inline object.
ioInlineObjectProperties :: Lens' InlineObject (Maybe InlineObjectProperties)
ioInlineObjectProperties
  = lens _ioInlineObjectProperties
      (\ s a -> s{_ioInlineObjectProperties = a})

-- | The ID of this inline object.
ioObjectId :: Lens' InlineObject (Maybe Text)
ioObjectId
  = lens _ioObjectId (\ s a -> s{_ioObjectId = a})

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
ioSuggestedDeletionIds :: Lens' InlineObject [Text]
ioSuggestedDeletionIds
  = lens _ioSuggestedDeletionIds
      (\ s a -> s{_ioSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The suggested changes to the inline object properties, keyed by
-- suggestion ID.
ioSuggestedInlineObjectPropertiesChanges :: Lens' InlineObject (Maybe InlineObjectSuggestedInlineObjectPropertiesChanges)
ioSuggestedInlineObjectPropertiesChanges
  = lens _ioSuggestedInlineObjectPropertiesChanges
      (\ s a ->
         s{_ioSuggestedInlineObjectPropertiesChanges = a})

instance FromJSON InlineObject where
        parseJSON
          = withObject "InlineObject"
              (\ o ->
                 InlineObject' <$>
                   (o .:? "suggestedInsertionId") <*>
                     (o .:? "inlineObjectProperties")
                     <*> (o .:? "objectId")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "suggestedInlineObjectPropertiesChanges"))

instance ToJSON InlineObject where
        toJSON InlineObject'{..}
          = object
              (catMaybes
                 [("suggestedInsertionId" .=) <$>
                    _ioSuggestedInsertionId,
                  ("inlineObjectProperties" .=) <$>
                    _ioInlineObjectProperties,
                  ("objectId" .=) <$> _ioObjectId,
                  ("suggestedDeletionIds" .=) <$>
                    _ioSuggestedDeletionIds,
                  ("suggestedInlineObjectPropertiesChanges" .=) <$>
                    _ioSuggestedInlineObjectPropertiesChanges])

-- | A border around an EmbeddedObject.
--
-- /See:/ 'embeddedObjectBOrder' smart constructor.
data EmbeddedObjectBOrder =
  EmbeddedObjectBOrder'
    { _eoboColor :: !(Maybe OptionalColor)
    , _eoboWidth :: !(Maybe Dimension)
    , _eoboDashStyle :: !(Maybe EmbeddedObjectBOrderDashStyle)
    , _eoboPropertyState :: !(Maybe EmbeddedObjectBOrderPropertyState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EmbeddedObjectBOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eoboColor'
--
-- * 'eoboWidth'
--
-- * 'eoboDashStyle'
--
-- * 'eoboPropertyState'
embeddedObjectBOrder
    :: EmbeddedObjectBOrder
embeddedObjectBOrder =
  EmbeddedObjectBOrder'
    { _eoboColor = Nothing
    , _eoboWidth = Nothing
    , _eoboDashStyle = Nothing
    , _eoboPropertyState = Nothing
    }


-- | The color of the border.
eoboColor :: Lens' EmbeddedObjectBOrder (Maybe OptionalColor)
eoboColor
  = lens _eoboColor (\ s a -> s{_eoboColor = a})

-- | The width of the border.
eoboWidth :: Lens' EmbeddedObjectBOrder (Maybe Dimension)
eoboWidth
  = lens _eoboWidth (\ s a -> s{_eoboWidth = a})

-- | The dash style of the border.
eoboDashStyle :: Lens' EmbeddedObjectBOrder (Maybe EmbeddedObjectBOrderDashStyle)
eoboDashStyle
  = lens _eoboDashStyle
      (\ s a -> s{_eoboDashStyle = a})

-- | The property state of the border property.
eoboPropertyState :: Lens' EmbeddedObjectBOrder (Maybe EmbeddedObjectBOrderPropertyState)
eoboPropertyState
  = lens _eoboPropertyState
      (\ s a -> s{_eoboPropertyState = a})

instance FromJSON EmbeddedObjectBOrder where
        parseJSON
          = withObject "EmbeddedObjectBOrder"
              (\ o ->
                 EmbeddedObjectBOrder' <$>
                   (o .:? "color") <*> (o .:? "width") <*>
                     (o .:? "dashStyle")
                     <*> (o .:? "propertyState"))

instance ToJSON EmbeddedObjectBOrder where
        toJSON EmbeddedObjectBOrder'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _eoboColor,
                  ("width" .=) <$> _eoboWidth,
                  ("dashStyle" .=) <$> _eoboDashStyle,
                  ("propertyState" .=) <$> _eoboPropertyState])

-- | The suggested changes to the table cell style, keyed by suggestion ID.
--
-- /See:/ 'tableCellSuggestedTableCellStyleChanges' smart constructor.
newtype TableCellSuggestedTableCellStyleChanges =
  TableCellSuggestedTableCellStyleChanges'
    { _tcstcscAddtional :: HashMap Text SuggestedTableCellStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableCellSuggestedTableCellStyleChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcstcscAddtional'
tableCellSuggestedTableCellStyleChanges
    :: HashMap Text SuggestedTableCellStyle -- ^ 'tcstcscAddtional'
    -> TableCellSuggestedTableCellStyleChanges
tableCellSuggestedTableCellStyleChanges pTcstcscAddtional_ =
  TableCellSuggestedTableCellStyleChanges'
    {_tcstcscAddtional = _Coerce # pTcstcscAddtional_}


tcstcscAddtional :: Lens' TableCellSuggestedTableCellStyleChanges (HashMap Text SuggestedTableCellStyle)
tcstcscAddtional
  = lens _tcstcscAddtional
      (\ s a -> s{_tcstcscAddtional = a})
      . _Coerce

instance FromJSON
           TableCellSuggestedTableCellStyleChanges
         where
        parseJSON
          = withObject
              "TableCellSuggestedTableCellStyleChanges"
              (\ o ->
                 TableCellSuggestedTableCellStyleChanges' <$>
                   (parseJSONObject o))

instance ToJSON
           TableCellSuggestedTableCellStyleChanges
         where
        toJSON = toJSON . _tcstcscAddtional

-- | The style of a TableCell. Inherited table cell styles are represented as
-- unset fields in this message. A table cell style can inherit from the
-- table\'s style.
--
-- /See:/ 'tableCellStyle' smart constructor.
data TableCellStyle =
  TableCellStyle'
    { _tcsBOrderRight :: !(Maybe TableCellBOrder)
    , _tcsBOrderTop :: !(Maybe TableCellBOrder)
    , _tcsColumnSpan :: !(Maybe (Textual Int32))
    , _tcsBackgRoundColor :: !(Maybe OptionalColor)
    , _tcsPaddingBottom :: !(Maybe Dimension)
    , _tcsRowSpan :: !(Maybe (Textual Int32))
    , _tcsBOrderLeft :: !(Maybe TableCellBOrder)
    , _tcsPaddingLeft :: !(Maybe Dimension)
    , _tcsPaddingTop :: !(Maybe Dimension)
    , _tcsBOrderBottom :: !(Maybe TableCellBOrder)
    , _tcsContentAlignment :: !(Maybe TableCellStyleContentAlignment)
    , _tcsPaddingRight :: !(Maybe Dimension)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableCellStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcsBOrderRight'
--
-- * 'tcsBOrderTop'
--
-- * 'tcsColumnSpan'
--
-- * 'tcsBackgRoundColor'
--
-- * 'tcsPaddingBottom'
--
-- * 'tcsRowSpan'
--
-- * 'tcsBOrderLeft'
--
-- * 'tcsPaddingLeft'
--
-- * 'tcsPaddingTop'
--
-- * 'tcsBOrderBottom'
--
-- * 'tcsContentAlignment'
--
-- * 'tcsPaddingRight'
tableCellStyle
    :: TableCellStyle
tableCellStyle =
  TableCellStyle'
    { _tcsBOrderRight = Nothing
    , _tcsBOrderTop = Nothing
    , _tcsColumnSpan = Nothing
    , _tcsBackgRoundColor = Nothing
    , _tcsPaddingBottom = Nothing
    , _tcsRowSpan = Nothing
    , _tcsBOrderLeft = Nothing
    , _tcsPaddingLeft = Nothing
    , _tcsPaddingTop = Nothing
    , _tcsBOrderBottom = Nothing
    , _tcsContentAlignment = Nothing
    , _tcsPaddingRight = Nothing
    }


-- | The right border of the cell.
tcsBOrderRight :: Lens' TableCellStyle (Maybe TableCellBOrder)
tcsBOrderRight
  = lens _tcsBOrderRight
      (\ s a -> s{_tcsBOrderRight = a})

-- | The top border of the cell.
tcsBOrderTop :: Lens' TableCellStyle (Maybe TableCellBOrder)
tcsBOrderTop
  = lens _tcsBOrderTop (\ s a -> s{_tcsBOrderTop = a})

-- | The column span of the cell. This property is read-only.
tcsColumnSpan :: Lens' TableCellStyle (Maybe Int32)
tcsColumnSpan
  = lens _tcsColumnSpan
      (\ s a -> s{_tcsColumnSpan = a})
      . mapping _Coerce

-- | The background color of the cell.
tcsBackgRoundColor :: Lens' TableCellStyle (Maybe OptionalColor)
tcsBackgRoundColor
  = lens _tcsBackgRoundColor
      (\ s a -> s{_tcsBackgRoundColor = a})

-- | The bottom padding of the cell.
tcsPaddingBottom :: Lens' TableCellStyle (Maybe Dimension)
tcsPaddingBottom
  = lens _tcsPaddingBottom
      (\ s a -> s{_tcsPaddingBottom = a})

-- | The row span of the cell. This property is read-only.
tcsRowSpan :: Lens' TableCellStyle (Maybe Int32)
tcsRowSpan
  = lens _tcsRowSpan (\ s a -> s{_tcsRowSpan = a}) .
      mapping _Coerce

-- | The left border of the cell.
tcsBOrderLeft :: Lens' TableCellStyle (Maybe TableCellBOrder)
tcsBOrderLeft
  = lens _tcsBOrderLeft
      (\ s a -> s{_tcsBOrderLeft = a})

-- | The left padding of the cell.
tcsPaddingLeft :: Lens' TableCellStyle (Maybe Dimension)
tcsPaddingLeft
  = lens _tcsPaddingLeft
      (\ s a -> s{_tcsPaddingLeft = a})

-- | The top padding of the cell.
tcsPaddingTop :: Lens' TableCellStyle (Maybe Dimension)
tcsPaddingTop
  = lens _tcsPaddingTop
      (\ s a -> s{_tcsPaddingTop = a})

-- | The bottom border of the cell.
tcsBOrderBottom :: Lens' TableCellStyle (Maybe TableCellBOrder)
tcsBOrderBottom
  = lens _tcsBOrderBottom
      (\ s a -> s{_tcsBOrderBottom = a})

-- | The alignment of the content in the table cell. The default alignment
-- matches the alignment for newly created table cells in the Docs editor.
tcsContentAlignment :: Lens' TableCellStyle (Maybe TableCellStyleContentAlignment)
tcsContentAlignment
  = lens _tcsContentAlignment
      (\ s a -> s{_tcsContentAlignment = a})

-- | The right padding of the cell.
tcsPaddingRight :: Lens' TableCellStyle (Maybe Dimension)
tcsPaddingRight
  = lens _tcsPaddingRight
      (\ s a -> s{_tcsPaddingRight = a})

instance FromJSON TableCellStyle where
        parseJSON
          = withObject "TableCellStyle"
              (\ o ->
                 TableCellStyle' <$>
                   (o .:? "borderRight") <*> (o .:? "borderTop") <*>
                     (o .:? "columnSpan")
                     <*> (o .:? "backgroundColor")
                     <*> (o .:? "paddingBottom")
                     <*> (o .:? "rowSpan")
                     <*> (o .:? "borderLeft")
                     <*> (o .:? "paddingLeft")
                     <*> (o .:? "paddingTop")
                     <*> (o .:? "borderBottom")
                     <*> (o .:? "contentAlignment")
                     <*> (o .:? "paddingRight"))

instance ToJSON TableCellStyle where
        toJSON TableCellStyle'{..}
          = object
              (catMaybes
                 [("borderRight" .=) <$> _tcsBOrderRight,
                  ("borderTop" .=) <$> _tcsBOrderTop,
                  ("columnSpan" .=) <$> _tcsColumnSpan,
                  ("backgroundColor" .=) <$> _tcsBackgRoundColor,
                  ("paddingBottom" .=) <$> _tcsPaddingBottom,
                  ("rowSpan" .=) <$> _tcsRowSpan,
                  ("borderLeft" .=) <$> _tcsBOrderLeft,
                  ("paddingLeft" .=) <$> _tcsPaddingLeft,
                  ("paddingTop" .=) <$> _tcsPaddingTop,
                  ("borderBottom" .=) <$> _tcsBOrderBottom,
                  ("contentAlignment" .=) <$> _tcsContentAlignment,
                  ("paddingRight" .=) <$> _tcsPaddingRight])

-- | The suggested text style changes to this Person, keyed by suggestion ID.
--
-- /See:/ 'personSuggestedTextStyleChanges' smart constructor.
newtype PersonSuggestedTextStyleChanges =
  PersonSuggestedTextStyleChanges'
    { _pstscAddtional :: HashMap Text SuggestedTextStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonSuggestedTextStyleChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pstscAddtional'
personSuggestedTextStyleChanges
    :: HashMap Text SuggestedTextStyle -- ^ 'pstscAddtional'
    -> PersonSuggestedTextStyleChanges
personSuggestedTextStyleChanges pPstscAddtional_ =
  PersonSuggestedTextStyleChanges'
    {_pstscAddtional = _Coerce # pPstscAddtional_}


pstscAddtional :: Lens' PersonSuggestedTextStyleChanges (HashMap Text SuggestedTextStyle)
pstscAddtional
  = lens _pstscAddtional
      (\ s a -> s{_pstscAddtional = a})
      . _Coerce

instance FromJSON PersonSuggestedTextStyleChanges
         where
        parseJSON
          = withObject "PersonSuggestedTextStyleChanges"
              (\ o ->
                 PersonSuggestedTextStyleChanges' <$>
                   (parseJSONObject o))

instance ToJSON PersonSuggestedTextStyleChanges where
        toJSON = toJSON . _pstscAddtional

-- | A document header.
--
-- /See:/ 'header' smart constructor.
data Header =
  Header'
    { _hHeaderId :: !(Maybe Text)
    , _hContent :: !(Maybe [StructuralElement])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Header' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hHeaderId'
--
-- * 'hContent'
header
    :: Header
header = Header' {_hHeaderId = Nothing, _hContent = Nothing}


-- | The ID of the header.
hHeaderId :: Lens' Header (Maybe Text)
hHeaderId
  = lens _hHeaderId (\ s a -> s{_hHeaderId = a})

-- | The contents of the header. The indexes for a header\'s content begin at
-- zero.
hContent :: Lens' Header [StructuralElement]
hContent
  = lens _hContent (\ s a -> s{_hContent = a}) .
      _Default
      . _Coerce

instance FromJSON Header where
        parseJSON
          = withObject "Header"
              (\ o ->
                 Header' <$>
                   (o .:? "headerId") <*> (o .:? "content" .!= mempty))

instance ToJSON Header where
        toJSON Header'{..}
          = object
              (catMaybes
                 [("headerId" .=) <$> _hHeaderId,
                  ("content" .=) <$> _hContent])

-- | Specifies a contiguous range of text.
--
-- /See:/ 'range' smart constructor.
data Range =
  Range'
    { _rEndIndex :: !(Maybe (Textual Int32))
    , _rStartIndex :: !(Maybe (Textual Int32))
    , _rSegmentId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Range' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rEndIndex'
--
-- * 'rStartIndex'
--
-- * 'rSegmentId'
range
    :: Range
range =
  Range' {_rEndIndex = Nothing, _rStartIndex = Nothing, _rSegmentId = Nothing}


-- | The zero-based end index of this range, exclusive, in UTF-16 code units.
-- In all current uses, an end index must be provided. This field is an
-- Int32Value in order to accommodate future use cases with open-ended
-- ranges.
rEndIndex :: Lens' Range (Maybe Int32)
rEndIndex
  = lens _rEndIndex (\ s a -> s{_rEndIndex = a}) .
      mapping _Coerce

-- | The zero-based start index of this range, in UTF-16 code units. In all
-- current uses, a start index must be provided. This field is an
-- Int32Value in order to accommodate future use cases with open-ended
-- ranges.
rStartIndex :: Lens' Range (Maybe Int32)
rStartIndex
  = lens _rStartIndex (\ s a -> s{_rStartIndex = a}) .
      mapping _Coerce

-- | The ID of the header, footer or footnote that this range is contained
-- in. An empty segment ID signifies the document\'s body.
rSegmentId :: Lens' Range (Maybe Text)
rSegmentId
  = lens _rSegmentId (\ s a -> s{_rSegmentId = a})

instance FromJSON Range where
        parseJSON
          = withObject "Range"
              (\ o ->
                 Range' <$>
                   (o .:? "endIndex") <*> (o .:? "startIndex") <*>
                     (o .:? "segmentId"))

instance ToJSON Range where
        toJSON Range'{..}
          = object
              (catMaybes
                 [("endIndex" .=) <$> _rEndIndex,
                  ("startIndex" .=) <$> _rStartIndex,
                  ("segmentId" .=) <$> _rSegmentId])

-- | A Google Docs document.
--
-- /See:/ 'document' smart constructor.
data Document =
  Document'
    { _dNamedRanges :: !(Maybe DocumentNamedRanges)
    , _dInlineObjects :: !(Maybe DocumentInlineObjects)
    , _dDocumentId :: !(Maybe Text)
    , _dBody :: !(Maybe Body)
    , _dDocumentStyle :: !(Maybe DocumentStyle)
    , _dFooters :: !(Maybe DocumentFooters)
    , _dPositionedObjects :: !(Maybe DocumentPositionedObjects)
    , _dSuggestionsViewMode :: !(Maybe DocumentSuggestionsViewMode)
    , _dHeaders :: !(Maybe DocumentHeaders)
    , _dNamedStyles :: !(Maybe NamedStyles)
    , _dSuggestedNamedStylesChanges :: !(Maybe DocumentSuggestedNamedStylesChanges)
    , _dSuggestedDocumentStyleChanges :: !(Maybe DocumentSuggestedDocumentStyleChanges)
    , _dTitle :: !(Maybe Text)
    , _dRevisionId :: !(Maybe Text)
    , _dFootNotes :: !(Maybe DocumentFootNotes)
    , _dLists :: !(Maybe DocumentLists)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Document' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNamedRanges'
--
-- * 'dInlineObjects'
--
-- * 'dDocumentId'
--
-- * 'dBody'
--
-- * 'dDocumentStyle'
--
-- * 'dFooters'
--
-- * 'dPositionedObjects'
--
-- * 'dSuggestionsViewMode'
--
-- * 'dHeaders'
--
-- * 'dNamedStyles'
--
-- * 'dSuggestedNamedStylesChanges'
--
-- * 'dSuggestedDocumentStyleChanges'
--
-- * 'dTitle'
--
-- * 'dRevisionId'
--
-- * 'dFootNotes'
--
-- * 'dLists'
document
    :: Document
document =
  Document'
    { _dNamedRanges = Nothing
    , _dInlineObjects = Nothing
    , _dDocumentId = Nothing
    , _dBody = Nothing
    , _dDocumentStyle = Nothing
    , _dFooters = Nothing
    , _dPositionedObjects = Nothing
    , _dSuggestionsViewMode = Nothing
    , _dHeaders = Nothing
    , _dNamedStyles = Nothing
    , _dSuggestedNamedStylesChanges = Nothing
    , _dSuggestedDocumentStyleChanges = Nothing
    , _dTitle = Nothing
    , _dRevisionId = Nothing
    , _dFootNotes = Nothing
    , _dLists = Nothing
    }


-- | Output only. The named ranges in the document, keyed by name.
dNamedRanges :: Lens' Document (Maybe DocumentNamedRanges)
dNamedRanges
  = lens _dNamedRanges (\ s a -> s{_dNamedRanges = a})

-- | Output only. The inline objects in the document, keyed by object ID.
dInlineObjects :: Lens' Document (Maybe DocumentInlineObjects)
dInlineObjects
  = lens _dInlineObjects
      (\ s a -> s{_dInlineObjects = a})

-- | Output only. The ID of the document.
dDocumentId :: Lens' Document (Maybe Text)
dDocumentId
  = lens _dDocumentId (\ s a -> s{_dDocumentId = a})

-- | Output only. The main body of the document.
dBody :: Lens' Document (Maybe Body)
dBody = lens _dBody (\ s a -> s{_dBody = a})

-- | Output only. The style of the document.
dDocumentStyle :: Lens' Document (Maybe DocumentStyle)
dDocumentStyle
  = lens _dDocumentStyle
      (\ s a -> s{_dDocumentStyle = a})

-- | Output only. The footers in the document, keyed by footer ID.
dFooters :: Lens' Document (Maybe DocumentFooters)
dFooters = lens _dFooters (\ s a -> s{_dFooters = a})

-- | Output only. The positioned objects in the document, keyed by object ID.
dPositionedObjects :: Lens' Document (Maybe DocumentPositionedObjects)
dPositionedObjects
  = lens _dPositionedObjects
      (\ s a -> s{_dPositionedObjects = a})

-- | Output only. The suggestions view mode applied to the document. Note:
-- When editing a document, changes must be based on a document with
-- SUGGESTIONS_INLINE.
dSuggestionsViewMode :: Lens' Document (Maybe DocumentSuggestionsViewMode)
dSuggestionsViewMode
  = lens _dSuggestionsViewMode
      (\ s a -> s{_dSuggestionsViewMode = a})

-- | Output only. The headers in the document, keyed by header ID.
dHeaders :: Lens' Document (Maybe DocumentHeaders)
dHeaders = lens _dHeaders (\ s a -> s{_dHeaders = a})

-- | Output only. The named styles of the document.
dNamedStyles :: Lens' Document (Maybe NamedStyles)
dNamedStyles
  = lens _dNamedStyles (\ s a -> s{_dNamedStyles = a})

-- | Output only. The suggested changes to the named styles of the document,
-- keyed by suggestion ID.
dSuggestedNamedStylesChanges :: Lens' Document (Maybe DocumentSuggestedNamedStylesChanges)
dSuggestedNamedStylesChanges
  = lens _dSuggestedNamedStylesChanges
      (\ s a -> s{_dSuggestedNamedStylesChanges = a})

-- | Output only. The suggested changes to the style of the document, keyed
-- by suggestion ID.
dSuggestedDocumentStyleChanges :: Lens' Document (Maybe DocumentSuggestedDocumentStyleChanges)
dSuggestedDocumentStyleChanges
  = lens _dSuggestedDocumentStyleChanges
      (\ s a -> s{_dSuggestedDocumentStyleChanges = a})

-- | The title of the document.
dTitle :: Lens' Document (Maybe Text)
dTitle = lens _dTitle (\ s a -> s{_dTitle = a})

-- | Output only. The revision ID of the document. Can be used in update
-- requests to specify which revision of a document to apply updates to and
-- how the request should behave if the document has been edited since that
-- revision. Only populated if the user has edit access to the document.
-- The format of the revision ID may change over time, so it should be
-- treated opaquely. A returned revision ID is only guaranteed to be valid
-- for 24 hours after it has been returned and cannot be shared across
-- users. If the revision ID is unchanged between calls, then the document
-- has not changed. Conversely, a changed ID (for the same document and
-- user) usually means the document has been updated; however, a changed ID
-- can also be due to internal factors such as ID format changes.
dRevisionId :: Lens' Document (Maybe Text)
dRevisionId
  = lens _dRevisionId (\ s a -> s{_dRevisionId = a})

-- | Output only. The footnotes in the document, keyed by footnote ID.
dFootNotes :: Lens' Document (Maybe DocumentFootNotes)
dFootNotes
  = lens _dFootNotes (\ s a -> s{_dFootNotes = a})

-- | Output only. The lists in the document, keyed by list ID.
dLists :: Lens' Document (Maybe DocumentLists)
dLists = lens _dLists (\ s a -> s{_dLists = a})

instance FromJSON Document where
        parseJSON
          = withObject "Document"
              (\ o ->
                 Document' <$>
                   (o .:? "namedRanges") <*> (o .:? "inlineObjects") <*>
                     (o .:? "documentId")
                     <*> (o .:? "body")
                     <*> (o .:? "documentStyle")
                     <*> (o .:? "footers")
                     <*> (o .:? "positionedObjects")
                     <*> (o .:? "suggestionsViewMode")
                     <*> (o .:? "headers")
                     <*> (o .:? "namedStyles")
                     <*> (o .:? "suggestedNamedStylesChanges")
                     <*> (o .:? "suggestedDocumentStyleChanges")
                     <*> (o .:? "title")
                     <*> (o .:? "revisionId")
                     <*> (o .:? "footnotes")
                     <*> (o .:? "lists"))

instance ToJSON Document where
        toJSON Document'{..}
          = object
              (catMaybes
                 [("namedRanges" .=) <$> _dNamedRanges,
                  ("inlineObjects" .=) <$> _dInlineObjects,
                  ("documentId" .=) <$> _dDocumentId,
                  ("body" .=) <$> _dBody,
                  ("documentStyle" .=) <$> _dDocumentStyle,
                  ("footers" .=) <$> _dFooters,
                  ("positionedObjects" .=) <$> _dPositionedObjects,
                  ("suggestionsViewMode" .=) <$> _dSuggestionsViewMode,
                  ("headers" .=) <$> _dHeaders,
                  ("namedStyles" .=) <$> _dNamedStyles,
                  ("suggestedNamedStylesChanges" .=) <$>
                    _dSuggestedNamedStylesChanges,
                  ("suggestedDocumentStyleChanges" .=) <$>
                    _dSuggestedDocumentStyleChanges,
                  ("title" .=) <$> _dTitle,
                  ("revisionId" .=) <$> _dRevisionId,
                  ("footnotes" .=) <$> _dFootNotes,
                  ("lists" .=) <$> _dLists])

-- | Output only. The suggested changes to the style of the document, keyed
-- by suggestion ID.
--
-- /See:/ 'documentSuggestedDocumentStyleChanges' smart constructor.
newtype DocumentSuggestedDocumentStyleChanges =
  DocumentSuggestedDocumentStyleChanges'
    { _dsdscAddtional :: HashMap Text SuggestedDocumentStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentSuggestedDocumentStyleChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsdscAddtional'
documentSuggestedDocumentStyleChanges
    :: HashMap Text SuggestedDocumentStyle -- ^ 'dsdscAddtional'
    -> DocumentSuggestedDocumentStyleChanges
documentSuggestedDocumentStyleChanges pDsdscAddtional_ =
  DocumentSuggestedDocumentStyleChanges'
    {_dsdscAddtional = _Coerce # pDsdscAddtional_}


dsdscAddtional :: Lens' DocumentSuggestedDocumentStyleChanges (HashMap Text SuggestedDocumentStyle)
dsdscAddtional
  = lens _dsdscAddtional
      (\ s a -> s{_dsdscAddtional = a})
      . _Coerce

instance FromJSON
           DocumentSuggestedDocumentStyleChanges
         where
        parseJSON
          = withObject "DocumentSuggestedDocumentStyleChanges"
              (\ o ->
                 DocumentSuggestedDocumentStyleChanges' <$>
                   (parseJSONObject o))

instance ToJSON DocumentSuggestedDocumentStyleChanges
         where
        toJSON = toJSON . _dsdscAddtional

-- | Deletes a Header from the document.
--
-- /See:/ 'deleteHeaderRequest' smart constructor.
newtype DeleteHeaderRequest =
  DeleteHeaderRequest'
    { _dhrHeaderId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteHeaderRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhrHeaderId'
deleteHeaderRequest
    :: DeleteHeaderRequest
deleteHeaderRequest = DeleteHeaderRequest' {_dhrHeaderId = Nothing}


-- | The id of the header to delete. If this header is defined on
-- DocumentStyle, the reference to this header is removed, resulting in no
-- header of that type for the first section of the document. If this
-- header is defined on a SectionStyle, the reference to this header is
-- removed and the header of that type is now continued from the previous
-- section.
dhrHeaderId :: Lens' DeleteHeaderRequest (Maybe Text)
dhrHeaderId
  = lens _dhrHeaderId (\ s a -> s{_dhrHeaderId = a})

instance FromJSON DeleteHeaderRequest where
        parseJSON
          = withObject "DeleteHeaderRequest"
              (\ o -> DeleteHeaderRequest' <$> (o .:? "headerId"))

instance ToJSON DeleteHeaderRequest where
        toJSON DeleteHeaderRequest'{..}
          = object
              (catMaybes [("headerId" .=) <$> _dhrHeaderId])

-- | The named styles. Paragraphs in the document can inherit their TextStyle
-- and ParagraphStyle from these named styles.
--
-- /See:/ 'namedStyles' smart constructor.
newtype NamedStyles =
  NamedStyles'
    { _nsStyles :: Maybe [NamedStyle]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamedStyles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsStyles'
namedStyles
    :: NamedStyles
namedStyles = NamedStyles' {_nsStyles = Nothing}


-- | The named styles. There is an entry for each of the possible named style
-- types.
nsStyles :: Lens' NamedStyles [NamedStyle]
nsStyles
  = lens _nsStyles (\ s a -> s{_nsStyles = a}) .
      _Default
      . _Coerce

instance FromJSON NamedStyles where
        parseJSON
          = withObject "NamedStyles"
              (\ o -> NamedStyles' <$> (o .:? "styles" .!= mempty))

instance ToJSON NamedStyles where
        toJSON NamedStyles'{..}
          = object (catMaybes [("styles" .=) <$> _nsStyles])

-- | The suggested paragraph style changes to this paragraph, keyed by
-- suggestion ID.
--
-- /See:/ 'paragraphSuggestedParagraphStyleChanges' smart constructor.
newtype ParagraphSuggestedParagraphStyleChanges =
  ParagraphSuggestedParagraphStyleChanges'
    { _pspscAddtional :: HashMap Text SuggestedParagraphStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParagraphSuggestedParagraphStyleChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pspscAddtional'
paragraphSuggestedParagraphStyleChanges
    :: HashMap Text SuggestedParagraphStyle -- ^ 'pspscAddtional'
    -> ParagraphSuggestedParagraphStyleChanges
paragraphSuggestedParagraphStyleChanges pPspscAddtional_ =
  ParagraphSuggestedParagraphStyleChanges'
    {_pspscAddtional = _Coerce # pPspscAddtional_}


pspscAddtional :: Lens' ParagraphSuggestedParagraphStyleChanges (HashMap Text SuggestedParagraphStyle)
pspscAddtional
  = lens _pspscAddtional
      (\ s a -> s{_pspscAddtional = a})
      . _Coerce

instance FromJSON
           ParagraphSuggestedParagraphStyleChanges
         where
        parseJSON
          = withObject
              "ParagraphSuggestedParagraphStyleChanges"
              (\ o ->
                 ParagraphSuggestedParagraphStyleChanges' <$>
                   (parseJSONObject o))

instance ToJSON
           ParagraphSuggestedParagraphStyleChanges
         where
        toJSON = toJSON . _pspscAddtional

-- | The properties of an embedded drawing.
--
-- /See:/ 'embeddedDrawingProperties' smart constructor.
data EmbeddedDrawingProperties =
  EmbeddedDrawingProperties'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EmbeddedDrawingProperties' with the minimum fields required to make a request.
--
embeddedDrawingProperties
    :: EmbeddedDrawingProperties
embeddedDrawingProperties = EmbeddedDrawingProperties'


instance FromJSON EmbeddedDrawingProperties where
        parseJSON
          = withObject "EmbeddedDrawingProperties"
              (\ o -> pure EmbeddedDrawingProperties')

instance ToJSON EmbeddedDrawingProperties where
        toJSON = const emptyObject

-- | Updates the style of a range of table cells.
--
-- /See:/ 'updateTableCellStyleRequest' smart constructor.
data UpdateTableCellStyleRequest =
  UpdateTableCellStyleRequest'
    { _utcsrTableStartLocation :: !(Maybe Location)
    , _utcsrTableCellStyle :: !(Maybe TableCellStyle)
    , _utcsrTableRange :: !(Maybe TableRange)
    , _utcsrFields :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateTableCellStyleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utcsrTableStartLocation'
--
-- * 'utcsrTableCellStyle'
--
-- * 'utcsrTableRange'
--
-- * 'utcsrFields'
updateTableCellStyleRequest
    :: UpdateTableCellStyleRequest
updateTableCellStyleRequest =
  UpdateTableCellStyleRequest'
    { _utcsrTableStartLocation = Nothing
    , _utcsrTableCellStyle = Nothing
    , _utcsrTableRange = Nothing
    , _utcsrFields = Nothing
    }


-- | The location where the table starts in the document. When specified, the
-- updates are applied to all the cells in the table.
utcsrTableStartLocation :: Lens' UpdateTableCellStyleRequest (Maybe Location)
utcsrTableStartLocation
  = lens _utcsrTableStartLocation
      (\ s a -> s{_utcsrTableStartLocation = a})

-- | The style to set on the table cells. When updating borders, if a cell
-- shares a border with an adjacent cell, the corresponding border property
-- of the adjacent cell is updated as well. Borders that are merged and
-- invisible are not updated. Since updating a border shared by adjacent
-- cells in the same request can cause conflicting border updates, border
-- updates are applied in the following order: - \`border_right\` -
-- \`border_left\` - \`border_bottom\` - \`border_top\`
utcsrTableCellStyle :: Lens' UpdateTableCellStyleRequest (Maybe TableCellStyle)
utcsrTableCellStyle
  = lens _utcsrTableCellStyle
      (\ s a -> s{_utcsrTableCellStyle = a})

-- | The table range representing the subset of the table to which the
-- updates are applied.
utcsrTableRange :: Lens' UpdateTableCellStyleRequest (Maybe TableRange)
utcsrTableRange
  = lens _utcsrTableRange
      (\ s a -> s{_utcsrTableRange = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`tableCellStyle\` is implied and should not be specified. A
-- single \`\"*\"\` can be used as short-hand for listing every field. For
-- example to update the table cell background color, set \`fields\` to
-- \`\"backgroundColor\"\`. To reset a property to its default value,
-- include its field name in the field mask but leave the field itself
-- unset.
utcsrFields :: Lens' UpdateTableCellStyleRequest (Maybe GFieldMask)
utcsrFields
  = lens _utcsrFields (\ s a -> s{_utcsrFields = a})

instance FromJSON UpdateTableCellStyleRequest where
        parseJSON
          = withObject "UpdateTableCellStyleRequest"
              (\ o ->
                 UpdateTableCellStyleRequest' <$>
                   (o .:? "tableStartLocation") <*>
                     (o .:? "tableCellStyle")
                     <*> (o .:? "tableRange")
                     <*> (o .:? "fields"))

instance ToJSON UpdateTableCellStyleRequest where
        toJSON UpdateTableCellStyleRequest'{..}
          = object
              (catMaybes
                 [("tableStartLocation" .=) <$>
                    _utcsrTableStartLocation,
                  ("tableCellStyle" .=) <$> _utcsrTableCellStyle,
                  ("tableRange" .=) <$> _utcsrTableRange,
                  ("fields" .=) <$> _utcsrFields])

-- | A suggested change to a TextStyle.
--
-- /See:/ 'suggestedTextStyle' smart constructor.
data SuggestedTextStyle =
  SuggestedTextStyle'
    { _stsTextStyle :: !(Maybe TextStyle)
    , _stsTextStyleSuggestionState :: !(Maybe TextStyleSuggestionState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestedTextStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stsTextStyle'
--
-- * 'stsTextStyleSuggestionState'
suggestedTextStyle
    :: SuggestedTextStyle
suggestedTextStyle =
  SuggestedTextStyle'
    {_stsTextStyle = Nothing, _stsTextStyleSuggestionState = Nothing}


-- | A TextStyle that only includes the changes made in this suggestion. This
-- can be used along with the text_style_suggestion_state to see which
-- fields have changed and their new values.
stsTextStyle :: Lens' SuggestedTextStyle (Maybe TextStyle)
stsTextStyle
  = lens _stsTextStyle (\ s a -> s{_stsTextStyle = a})

-- | A mask that indicates which of the fields on the base TextStyle have
-- been changed in this suggestion.
stsTextStyleSuggestionState :: Lens' SuggestedTextStyle (Maybe TextStyleSuggestionState)
stsTextStyleSuggestionState
  = lens _stsTextStyleSuggestionState
      (\ s a -> s{_stsTextStyleSuggestionState = a})

instance FromJSON SuggestedTextStyle where
        parseJSON
          = withObject "SuggestedTextStyle"
              (\ o ->
                 SuggestedTextStyle' <$>
                   (o .:? "textStyle") <*>
                     (o .:? "textStyleSuggestionState"))

instance ToJSON SuggestedTextStyle where
        toJSON SuggestedTextStyle'{..}
          = object
              (catMaybes
                 [("textStyle" .=) <$> _stsTextStyle,
                  ("textStyleSuggestionState" .=) <$>
                    _stsTextStyleSuggestionState])

-- | Inserts an empty row into a table.
--
-- /See:/ 'insertTableRowRequest' smart constructor.
data InsertTableRowRequest =
  InsertTableRowRequest'
    { _itrrInsertBelow :: !(Maybe Bool)
    , _itrrTableCellLocation :: !(Maybe TableCellLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InsertTableRowRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itrrInsertBelow'
--
-- * 'itrrTableCellLocation'
insertTableRowRequest
    :: InsertTableRowRequest
insertTableRowRequest =
  InsertTableRowRequest'
    {_itrrInsertBelow = Nothing, _itrrTableCellLocation = Nothing}


-- | Whether to insert new row below the reference cell location. - \`True\`:
-- insert below the cell. - \`False\`: insert above the cell.
itrrInsertBelow :: Lens' InsertTableRowRequest (Maybe Bool)
itrrInsertBelow
  = lens _itrrInsertBelow
      (\ s a -> s{_itrrInsertBelow = a})

-- | The reference table cell location from which rows will be inserted. A
-- new row will be inserted above (or below) the row where the reference
-- cell is. If the reference cell is a merged cell, a new row will be
-- inserted above (or below) the merged cell.
itrrTableCellLocation :: Lens' InsertTableRowRequest (Maybe TableCellLocation)
itrrTableCellLocation
  = lens _itrrTableCellLocation
      (\ s a -> s{_itrrTableCellLocation = a})

instance FromJSON InsertTableRowRequest where
        parseJSON
          = withObject "InsertTableRowRequest"
              (\ o ->
                 InsertTableRowRequest' <$>
                   (o .:? "insertBelow") <*>
                     (o .:? "tableCellLocation"))

instance ToJSON InsertTableRowRequest where
        toJSON InsertTableRowRequest'{..}
          = object
              (catMaybes
                 [("insertBelow" .=) <$> _itrrInsertBelow,
                  ("tableCellLocation" .=) <$> _itrrTableCellLocation])

-- | A suggested change to the NamedStyles.
--
-- /See:/ 'suggestedNamedStyles' smart constructor.
data SuggestedNamedStyles =
  SuggestedNamedStyles'
    { _snsNamedStylesSuggestionState :: !(Maybe NamedStylesSuggestionState)
    , _snsNamedStyles :: !(Maybe NamedStyles)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestedNamedStyles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snsNamedStylesSuggestionState'
--
-- * 'snsNamedStyles'
suggestedNamedStyles
    :: SuggestedNamedStyles
suggestedNamedStyles =
  SuggestedNamedStyles'
    {_snsNamedStylesSuggestionState = Nothing, _snsNamedStyles = Nothing}


-- | A mask that indicates which of the fields on the base NamedStyles have
-- been changed in this suggestion.
snsNamedStylesSuggestionState :: Lens' SuggestedNamedStyles (Maybe NamedStylesSuggestionState)
snsNamedStylesSuggestionState
  = lens _snsNamedStylesSuggestionState
      (\ s a -> s{_snsNamedStylesSuggestionState = a})

-- | A NamedStyles that only includes the changes made in this suggestion.
-- This can be used along with the named_styles_suggestion_state to see
-- which fields have changed and their new values.
snsNamedStyles :: Lens' SuggestedNamedStyles (Maybe NamedStyles)
snsNamedStyles
  = lens _snsNamedStyles
      (\ s a -> s{_snsNamedStyles = a})

instance FromJSON SuggestedNamedStyles where
        parseJSON
          = withObject "SuggestedNamedStyles"
              (\ o ->
                 SuggestedNamedStyles' <$>
                   (o .:? "namedStylesSuggestionState") <*>
                     (o .:? "namedStyles"))

instance ToJSON SuggestedNamedStyles where
        toJSON SuggestedNamedStyles'{..}
          = object
              (catMaybes
                 [("namedStylesSuggestionState" .=) <$>
                    _snsNamedStylesSuggestionState,
                  ("namedStyles" .=) <$> _snsNamedStyles])

-- | Merges cells in a Table.
--
-- /See:/ 'mergeTableCellsRequest' smart constructor.
newtype MergeTableCellsRequest =
  MergeTableCellsRequest'
    { _mtcrTableRange :: Maybe TableRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MergeTableCellsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtcrTableRange'
mergeTableCellsRequest
    :: MergeTableCellsRequest
mergeTableCellsRequest = MergeTableCellsRequest' {_mtcrTableRange = Nothing}


-- | The table range specifying which cells of the table to merge. Any text
-- in the cells being merged will be concatenated and stored in the
-- \"head\" cell of the range. This is the upper-left cell of the range
-- when the content direction is left to right, and the upper-right cell of
-- the range otherwise. If the range is non-rectangular (which can occur in
-- some cases where the range covers cells that are already merged or where
-- the table is non-rectangular), a 400 bad request error is returned.
mtcrTableRange :: Lens' MergeTableCellsRequest (Maybe TableRange)
mtcrTableRange
  = lens _mtcrTableRange
      (\ s a -> s{_mtcrTableRange = a})

instance FromJSON MergeTableCellsRequest where
        parseJSON
          = withObject "MergeTableCellsRequest"
              (\ o ->
                 MergeTableCellsRequest' <$> (o .:? "tableRange"))

instance ToJSON MergeTableCellsRequest where
        toJSON MergeTableCellsRequest'{..}
          = object
              (catMaybes [("tableRange" .=) <$> _mtcrTableRange])

-- | Provides control over how write requests are executed.
--
-- /See:/ 'writeControl' smart constructor.
data WriteControl =
  WriteControl'
    { _wcRequiredRevisionId :: !(Maybe Text)
    , _wcTargetRevisionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WriteControl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wcRequiredRevisionId'
--
-- * 'wcTargetRevisionId'
writeControl
    :: WriteControl
writeControl =
  WriteControl' {_wcRequiredRevisionId = Nothing, _wcTargetRevisionId = Nothing}


-- | The revision ID of the document that the write request will be applied
-- to. If this is not the latest revision of the document, the request will
-- not be processed and will return a 400 bad request error. When a
-- required revision ID is returned in a response, it indicates the
-- revision ID of the document after the request was applied.
wcRequiredRevisionId :: Lens' WriteControl (Maybe Text)
wcRequiredRevisionId
  = lens _wcRequiredRevisionId
      (\ s a -> s{_wcRequiredRevisionId = a})

-- | The target revision ID of the document that the write request will be
-- applied to. If collaborator changes have occurred after the document was
-- read using the API, the changes produced by this write request will be
-- transformed against the collaborator changes. This results in a new
-- revision of the document which incorporates both the changes in the
-- request and the collaborator changes, and the Docs server will resolve
-- conflicting changes. When using \`target_revision_id\`, the API client
-- can be thought of as another collaborator of the document. The target
-- revision ID may only be used to write to recent versions of a document.
-- If the target revision is too far behind the latest revision, the
-- request will not be processed and will return a 400 bad request error
-- and the request should be retried after reading the latest version of
-- the document. In most cases a \`revision_id\` will remain valid for use
-- as a target revision for several minutes after it is read, but for
-- frequently-edited documents this window may be shorter.
wcTargetRevisionId :: Lens' WriteControl (Maybe Text)
wcTargetRevisionId
  = lens _wcTargetRevisionId
      (\ s a -> s{_wcTargetRevisionId = a})

instance FromJSON WriteControl where
        parseJSON
          = withObject "WriteControl"
              (\ o ->
                 WriteControl' <$>
                   (o .:? "requiredRevisionId") <*>
                     (o .:? "targetRevisionId"))

instance ToJSON WriteControl where
        toJSON WriteControl'{..}
          = object
              (catMaybes
                 [("requiredRevisionId" .=) <$> _wcRequiredRevisionId,
                  ("targetRevisionId" .=) <$> _wcTargetRevisionId])

-- | Represents the styling that can be applied to text. Inherited text
-- styles are represented as unset fields in this message. A text style\'s
-- parent depends on where the text style is defined: * The TextStyle of
-- text in a Paragraph inherits from the paragraph\'s corresponding named
-- style type. * The TextStyle on a named style inherits from the normal
-- text named style. * The TextStyle of the normal text named style
-- inherits from the default text style in the Docs editor. * The TextStyle
-- on a Paragraph element that is contained in a table may inherit its text
-- style from the table style. If the text style does not inherit from a
-- parent, unsetting fields will revert the style to a value matching the
-- defaults in the Docs editor.
--
-- /See:/ 'textStyle' smart constructor.
data TextStyle =
  TextStyle'
    { _tsLink :: !(Maybe Link)
    , _tsBackgRoundColor :: !(Maybe OptionalColor)
    , _tsBaselineOffSet :: !(Maybe TextStyleBaselineOffSet)
    , _tsForegRoundColor :: !(Maybe OptionalColor)
    , _tsFontSize :: !(Maybe Dimension)
    , _tsSmallCaps :: !(Maybe Bool)
    , _tsUnderline :: !(Maybe Bool)
    , _tsWeightedFontFamily :: !(Maybe WeightedFontFamily)
    , _tsItalic :: !(Maybe Bool)
    , _tsBold :: !(Maybe Bool)
    , _tsStrikethrough :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsLink'
--
-- * 'tsBackgRoundColor'
--
-- * 'tsBaselineOffSet'
--
-- * 'tsForegRoundColor'
--
-- * 'tsFontSize'
--
-- * 'tsSmallCaps'
--
-- * 'tsUnderline'
--
-- * 'tsWeightedFontFamily'
--
-- * 'tsItalic'
--
-- * 'tsBold'
--
-- * 'tsStrikethrough'
textStyle
    :: TextStyle
textStyle =
  TextStyle'
    { _tsLink = Nothing
    , _tsBackgRoundColor = Nothing
    , _tsBaselineOffSet = Nothing
    , _tsForegRoundColor = Nothing
    , _tsFontSize = Nothing
    , _tsSmallCaps = Nothing
    , _tsUnderline = Nothing
    , _tsWeightedFontFamily = Nothing
    , _tsItalic = Nothing
    , _tsBold = Nothing
    , _tsStrikethrough = Nothing
    }


-- | The hyperlink destination of the text. If unset, there is no link. Links
-- are not inherited from parent text. Changing the link in an update
-- request causes some other changes to the text style of the range: * When
-- setting a link, the text foreground color will be updated to the default
-- link color and the text will be underlined. If these fields are modified
-- in the same request, those values will be used instead of the link
-- defaults. * Setting a link on a text range that overlaps with an
-- existing link will also update the existing link to point to the new
-- URL. * Links are not settable on newline characters. As a result,
-- setting a link on a text range that crosses a paragraph boundary, such
-- as \`\"ABC\\n123\"\`, will separate the newline character(s) into their
-- own text runs. The link will be applied separately to the runs before
-- and after the newline. * Removing a link will update the text style of
-- the range to match the style of the preceding text (or the default text
-- styles if the preceding text is another link) unless different styles
-- are being set in the same request.
tsLink :: Lens' TextStyle (Maybe Link)
tsLink = lens _tsLink (\ s a -> s{_tsLink = a})

-- | The background color of the text. If set, the color is either an RGB
-- color or transparent, depending on the \`color\` field.
tsBackgRoundColor :: Lens' TextStyle (Maybe OptionalColor)
tsBackgRoundColor
  = lens _tsBackgRoundColor
      (\ s a -> s{_tsBackgRoundColor = a})

-- | The text\'s vertical offset from its normal position. Text with
-- \`SUPERSCRIPT\` or \`SUBSCRIPT\` baseline offsets is automatically
-- rendered in a smaller font size, computed based on the \`font_size\`
-- field. The \`font_size\` itself is not affected by changes in this
-- field.
tsBaselineOffSet :: Lens' TextStyle (Maybe TextStyleBaselineOffSet)
tsBaselineOffSet
  = lens _tsBaselineOffSet
      (\ s a -> s{_tsBaselineOffSet = a})

-- | The foreground color of the text. If set, the color is either an RGB
-- color or transparent, depending on the \`color\` field.
tsForegRoundColor :: Lens' TextStyle (Maybe OptionalColor)
tsForegRoundColor
  = lens _tsForegRoundColor
      (\ s a -> s{_tsForegRoundColor = a})

-- | The size of the text\'s font.
tsFontSize :: Lens' TextStyle (Maybe Dimension)
tsFontSize
  = lens _tsFontSize (\ s a -> s{_tsFontSize = a})

-- | Whether or not the text is in small capital letters.
tsSmallCaps :: Lens' TextStyle (Maybe Bool)
tsSmallCaps
  = lens _tsSmallCaps (\ s a -> s{_tsSmallCaps = a})

-- | Whether or not the text is underlined.
tsUnderline :: Lens' TextStyle (Maybe Bool)
tsUnderline
  = lens _tsUnderline (\ s a -> s{_tsUnderline = a})

-- | The font family and rendered weight of the text. If an update request
-- specifies values for both \`weighted_font_family\` and \`bold\`, the
-- \`weighted_font_family\` is applied first, then \`bold\`. If
-- \`weighted_font_family#weight\` is not set, it defaults to \`400\`. If
-- \`weighted_font_family\` is set, then
-- \`weighted_font_family#font_family\` must also be set with a non-empty
-- value. Otherwise, a 400 bad request error is returned.
tsWeightedFontFamily :: Lens' TextStyle (Maybe WeightedFontFamily)
tsWeightedFontFamily
  = lens _tsWeightedFontFamily
      (\ s a -> s{_tsWeightedFontFamily = a})

-- | Whether or not the text is italicized.
tsItalic :: Lens' TextStyle (Maybe Bool)
tsItalic = lens _tsItalic (\ s a -> s{_tsItalic = a})

-- | Whether or not the text is rendered as bold.
tsBold :: Lens' TextStyle (Maybe Bool)
tsBold = lens _tsBold (\ s a -> s{_tsBold = a})

-- | Whether or not the text is struck through.
tsStrikethrough :: Lens' TextStyle (Maybe Bool)
tsStrikethrough
  = lens _tsStrikethrough
      (\ s a -> s{_tsStrikethrough = a})

instance FromJSON TextStyle where
        parseJSON
          = withObject "TextStyle"
              (\ o ->
                 TextStyle' <$>
                   (o .:? "link") <*> (o .:? "backgroundColor") <*>
                     (o .:? "baselineOffset")
                     <*> (o .:? "foregroundColor")
                     <*> (o .:? "fontSize")
                     <*> (o .:? "smallCaps")
                     <*> (o .:? "underline")
                     <*> (o .:? "weightedFontFamily")
                     <*> (o .:? "italic")
                     <*> (o .:? "bold")
                     <*> (o .:? "strikethrough"))

instance ToJSON TextStyle where
        toJSON TextStyle'{..}
          = object
              (catMaybes
                 [("link" .=) <$> _tsLink,
                  ("backgroundColor" .=) <$> _tsBackgRoundColor,
                  ("baselineOffset" .=) <$> _tsBaselineOffSet,
                  ("foregroundColor" .=) <$> _tsForegRoundColor,
                  ("fontSize" .=) <$> _tsFontSize,
                  ("smallCaps" .=) <$> _tsSmallCaps,
                  ("underline" .=) <$> _tsUnderline,
                  ("weightedFontFamily" .=) <$> _tsWeightedFontFamily,
                  ("italic" .=) <$> _tsItalic, ("bold" .=) <$> _tsBold,
                  ("strikethrough" .=) <$> _tsStrikethrough])

-- | The suggested text style changes to this HorizontalRule, keyed by
-- suggestion ID.
--
-- /See:/ 'horizontalRuleSuggestedTextStyleChanges' smart constructor.
newtype HorizontalRuleSuggestedTextStyleChanges =
  HorizontalRuleSuggestedTextStyleChanges'
    { _hrstscAddtional :: HashMap Text SuggestedTextStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HorizontalRuleSuggestedTextStyleChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hrstscAddtional'
horizontalRuleSuggestedTextStyleChanges
    :: HashMap Text SuggestedTextStyle -- ^ 'hrstscAddtional'
    -> HorizontalRuleSuggestedTextStyleChanges
horizontalRuleSuggestedTextStyleChanges pHrstscAddtional_ =
  HorizontalRuleSuggestedTextStyleChanges'
    {_hrstscAddtional = _Coerce # pHrstscAddtional_}


hrstscAddtional :: Lens' HorizontalRuleSuggestedTextStyleChanges (HashMap Text SuggestedTextStyle)
hrstscAddtional
  = lens _hrstscAddtional
      (\ s a -> s{_hrstscAddtional = a})
      . _Coerce

instance FromJSON
           HorizontalRuleSuggestedTextStyleChanges
         where
        parseJSON
          = withObject
              "HorizontalRuleSuggestedTextStyleChanges"
              (\ o ->
                 HorizontalRuleSuggestedTextStyleChanges' <$>
                   (parseJSONObject o))

instance ToJSON
           HorizontalRuleSuggestedTextStyleChanges
         where
        toJSON = toJSON . _hrstscAddtional

-- | Update the styling of text.
--
-- /See:/ 'updateTextStyleRequest' smart constructor.
data UpdateTextStyleRequest =
  UpdateTextStyleRequest'
    { _utsrRange :: !(Maybe Range)
    , _utsrTextStyle :: !(Maybe TextStyle)
    , _utsrFields :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateTextStyleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utsrRange'
--
-- * 'utsrTextStyle'
--
-- * 'utsrFields'
updateTextStyleRequest
    :: UpdateTextStyleRequest
updateTextStyleRequest =
  UpdateTextStyleRequest'
    {_utsrRange = Nothing, _utsrTextStyle = Nothing, _utsrFields = Nothing}


-- | The range of text to style. The range may be extended to include
-- adjacent newlines. If the range fully contains a paragraph belonging to
-- a list, the paragraph\'s bullet is also updated with the matching text
-- style. Ranges cannot be inserted inside a relative
-- UpdateTextStyleRequest.
utsrRange :: Lens' UpdateTextStyleRequest (Maybe Range)
utsrRange
  = lens _utsrRange (\ s a -> s{_utsrRange = a})

-- | The styles to set on the text. If the value for a particular style
-- matches that of the parent, that style will be set to inherit. Certain
-- text style changes may cause other changes in order to to mirror the
-- behavior of the Docs editor. See the documentation of TextStyle for more
-- information.
utsrTextStyle :: Lens' UpdateTextStyleRequest (Maybe TextStyle)
utsrTextStyle
  = lens _utsrTextStyle
      (\ s a -> s{_utsrTextStyle = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`text_style\` is implied and should not be specified. A single
-- \`\"*\"\` can be used as short-hand for listing every field. For
-- example, to update the text style to bold, set \`fields\` to
-- \`\"bold\"\`. To reset a property to its default value, include its
-- field name in the field mask but leave the field itself unset.
utsrFields :: Lens' UpdateTextStyleRequest (Maybe GFieldMask)
utsrFields
  = lens _utsrFields (\ s a -> s{_utsrFields = a})

instance FromJSON UpdateTextStyleRequest where
        parseJSON
          = withObject "UpdateTextStyleRequest"
              (\ o ->
                 UpdateTextStyleRequest' <$>
                   (o .:? "range") <*> (o .:? "textStyle") <*>
                     (o .:? "fields"))

instance ToJSON UpdateTextStyleRequest where
        toJSON UpdateTextStyleRequest'{..}
          = object
              (catMaybes
                 [("range" .=) <$> _utsrRange,
                  ("textStyle" .=) <$> _utsrTextStyle,
                  ("fields" .=) <$> _utsrFields])

-- | The suggested text style changes to this RichLink, keyed by suggestion
-- ID.
--
-- /See:/ 'richLinkSuggestedTextStyleChanges' smart constructor.
newtype RichLinkSuggestedTextStyleChanges =
  RichLinkSuggestedTextStyleChanges'
    { _rlstscAddtional :: HashMap Text SuggestedTextStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RichLinkSuggestedTextStyleChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlstscAddtional'
richLinkSuggestedTextStyleChanges
    :: HashMap Text SuggestedTextStyle -- ^ 'rlstscAddtional'
    -> RichLinkSuggestedTextStyleChanges
richLinkSuggestedTextStyleChanges pRlstscAddtional_ =
  RichLinkSuggestedTextStyleChanges'
    {_rlstscAddtional = _Coerce # pRlstscAddtional_}


rlstscAddtional :: Lens' RichLinkSuggestedTextStyleChanges (HashMap Text SuggestedTextStyle)
rlstscAddtional
  = lens _rlstscAddtional
      (\ s a -> s{_rlstscAddtional = a})
      . _Coerce

instance FromJSON RichLinkSuggestedTextStyleChanges
         where
        parseJSON
          = withObject "RichLinkSuggestedTextStyleChanges"
              (\ o ->
                 RichLinkSuggestedTextStyleChanges' <$>
                   (parseJSONObject o))

instance ToJSON RichLinkSuggestedTextStyleChanges
         where
        toJSON = toJSON . _rlstscAddtional

-- | A ParagraphElement that contains an InlineObject.
--
-- /See:/ 'inlineObjectElement' smart constructor.
data InlineObjectElement =
  InlineObjectElement'
    { _ioeSuggestedInsertionIds :: !(Maybe [Text])
    , _ioeSuggestedTextStyleChanges :: !(Maybe InlineObjectElementSuggestedTextStyleChanges)
    , _ioeInlineObjectId :: !(Maybe Text)
    , _ioeSuggestedDeletionIds :: !(Maybe [Text])
    , _ioeTextStyle :: !(Maybe TextStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InlineObjectElement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ioeSuggestedInsertionIds'
--
-- * 'ioeSuggestedTextStyleChanges'
--
-- * 'ioeInlineObjectId'
--
-- * 'ioeSuggestedDeletionIds'
--
-- * 'ioeTextStyle'
inlineObjectElement
    :: InlineObjectElement
inlineObjectElement =
  InlineObjectElement'
    { _ioeSuggestedInsertionIds = Nothing
    , _ioeSuggestedTextStyleChanges = Nothing
    , _ioeInlineObjectId = Nothing
    , _ioeSuggestedDeletionIds = Nothing
    , _ioeTextStyle = Nothing
    }


-- | The suggested insertion IDs. An InlineObjectElement may have multiple
-- insertion IDs if it is a nested suggested change. If empty, then this is
-- not a suggested insertion.
ioeSuggestedInsertionIds :: Lens' InlineObjectElement [Text]
ioeSuggestedInsertionIds
  = lens _ioeSuggestedInsertionIds
      (\ s a -> s{_ioeSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The suggested text style changes to this InlineObject, keyed by
-- suggestion ID.
ioeSuggestedTextStyleChanges :: Lens' InlineObjectElement (Maybe InlineObjectElementSuggestedTextStyleChanges)
ioeSuggestedTextStyleChanges
  = lens _ioeSuggestedTextStyleChanges
      (\ s a -> s{_ioeSuggestedTextStyleChanges = a})

-- | The ID of the InlineObject this element contains.
ioeInlineObjectId :: Lens' InlineObjectElement (Maybe Text)
ioeInlineObjectId
  = lens _ioeInlineObjectId
      (\ s a -> s{_ioeInlineObjectId = a})

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
ioeSuggestedDeletionIds :: Lens' InlineObjectElement [Text]
ioeSuggestedDeletionIds
  = lens _ioeSuggestedDeletionIds
      (\ s a -> s{_ioeSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The text style of this InlineObjectElement. Similar to text content,
-- like text runs and footnote references, the text style of an inline
-- object element can affect content layout as well as the styling of text
-- inserted adjacent to it.
ioeTextStyle :: Lens' InlineObjectElement (Maybe TextStyle)
ioeTextStyle
  = lens _ioeTextStyle (\ s a -> s{_ioeTextStyle = a})

instance FromJSON InlineObjectElement where
        parseJSON
          = withObject "InlineObjectElement"
              (\ o ->
                 InlineObjectElement' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "suggestedTextStyleChanges")
                     <*> (o .:? "inlineObjectId")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "textStyle"))

instance ToJSON InlineObjectElement where
        toJSON InlineObjectElement'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _ioeSuggestedInsertionIds,
                  ("suggestedTextStyleChanges" .=) <$>
                    _ioeSuggestedTextStyleChanges,
                  ("inlineObjectId" .=) <$> _ioeInlineObjectId,
                  ("suggestedDeletionIds" .=) <$>
                    _ioeSuggestedDeletionIds,
                  ("textStyle" .=) <$> _ioeTextStyle])

-- | Contains properties describing the look and feel of a list bullet at a
-- given level of nesting.
--
-- /See:/ 'nestingLevel' smart constructor.
data NestingLevel =
  NestingLevel'
    { _nlIndentFirstLine :: !(Maybe Dimension)
    , _nlGlyphFormat :: !(Maybe Text)
    , _nlBulletAlignment :: !(Maybe NestingLevelBulletAlignment)
    , _nlIndentStart :: !(Maybe Dimension)
    , _nlGlyphSymbol :: !(Maybe Text)
    , _nlTextStyle :: !(Maybe TextStyle)
    , _nlGlyphType :: !(Maybe NestingLevelGlyphType)
    , _nlStartNumber :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NestingLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlIndentFirstLine'
--
-- * 'nlGlyphFormat'
--
-- * 'nlBulletAlignment'
--
-- * 'nlIndentStart'
--
-- * 'nlGlyphSymbol'
--
-- * 'nlTextStyle'
--
-- * 'nlGlyphType'
--
-- * 'nlStartNumber'
nestingLevel
    :: NestingLevel
nestingLevel =
  NestingLevel'
    { _nlIndentFirstLine = Nothing
    , _nlGlyphFormat = Nothing
    , _nlBulletAlignment = Nothing
    , _nlIndentStart = Nothing
    , _nlGlyphSymbol = Nothing
    , _nlTextStyle = Nothing
    , _nlGlyphType = Nothing
    , _nlStartNumber = Nothing
    }


-- | The amount of indentation for the first line of paragraphs at this level
-- of nesting.
nlIndentFirstLine :: Lens' NestingLevel (Maybe Dimension)
nlIndentFirstLine
  = lens _nlIndentFirstLine
      (\ s a -> s{_nlIndentFirstLine = a})

-- | The format string used by bullets at this level of nesting. The glyph
-- format contains one or more placeholders, and these placeholder are
-- replaced with the appropriate values depending on the glyph_type or
-- glyph_symbol. The placeholders follow the pattern \`%[nesting_level]\`.
-- Furthermore, placeholders can have prefixes and suffixes. Thus, the
-- glyph format follows the pattern \`%[nesting_level]\`. Note that the
-- prefix and suffix are optional and can be arbitrary strings. For
-- example, the glyph format \`%0.\` indicates that the rendered glyph will
-- replace the placeholder with the corresponding glyph for nesting level 0
-- followed by a period as the suffix. So a list with a glyph type of
-- UPPER_ALPHA and glyph format \`%0.\` at nesting level 0 will result in a
-- list with rendered glyphs \`A.\` \`B.\` \`C.\` The glyph format can
-- contain placeholders for the current nesting level as well as
-- placeholders for parent nesting levels. For example, a list can have a
-- glyph format of \`%0.\` at nesting level 0 and a glyph format of
-- \`%0.%1.\` at nesting level 1. Assuming both nesting levels have DECIMAL
-- glyph types, this would result in a list with rendered glyphs \`1.\`
-- \`2.\` \` 2.1.\` \` 2.2.\` \`3.\` For nesting levels that are ordered,
-- the string that replaces a placeholder in the glyph format for a
-- particular paragraph depends on the paragraph\'s order within the list.
nlGlyphFormat :: Lens' NestingLevel (Maybe Text)
nlGlyphFormat
  = lens _nlGlyphFormat
      (\ s a -> s{_nlGlyphFormat = a})

-- | The alignment of the bullet within the space allotted for rendering the
-- bullet.
nlBulletAlignment :: Lens' NestingLevel (Maybe NestingLevelBulletAlignment)
nlBulletAlignment
  = lens _nlBulletAlignment
      (\ s a -> s{_nlBulletAlignment = a})

-- | The amount of indentation for paragraphs at this level of nesting.
-- Applied to the side that corresponds to the start of the text, based on
-- the paragraph\'s content direction.
nlIndentStart :: Lens' NestingLevel (Maybe Dimension)
nlIndentStart
  = lens _nlIndentStart
      (\ s a -> s{_nlIndentStart = a})

-- | A custom glyph symbol used by bullets when paragraphs at this level of
-- nesting are unordered. The glyph symbol replaces placeholders within the
-- glyph_format. For example, if the glyph_symbol is the solid circle
-- corresponding to Unicode U+25cf code point and the glyph_format is
-- \`%0\`, the rendered glyph would be the solid circle.
nlGlyphSymbol :: Lens' NestingLevel (Maybe Text)
nlGlyphSymbol
  = lens _nlGlyphSymbol
      (\ s a -> s{_nlGlyphSymbol = a})

-- | The text style of bullets at this level of nesting.
nlTextStyle :: Lens' NestingLevel (Maybe TextStyle)
nlTextStyle
  = lens _nlTextStyle (\ s a -> s{_nlTextStyle = a})

-- | The type of glyph used by bullets when paragraphs at this level of
-- nesting are ordered. The glyph type determines the type of glyph used to
-- replace placeholders within the glyph_format when paragraphs at this
-- level of nesting are ordered. For example, if the nesting level is 0,
-- the glyph_format is \`%0.\` and the glyph type is DECIMAL, then the
-- rendered glyph would replace the placeholder \`%0\` in the glyph format
-- with a number corresponding to list item\'s order within the list.
nlGlyphType :: Lens' NestingLevel (Maybe NestingLevelGlyphType)
nlGlyphType
  = lens _nlGlyphType (\ s a -> s{_nlGlyphType = a})

-- | The number of the first list item at this nesting level. A value of 0 is
-- treated as a value of 1 for lettered lists and roman numeraled lists,
-- i.e. for values of both 0 and 1, lettered and roman numeraled lists will
-- begin at \`a\` and \`i\` respectively. This value is ignored for nesting
-- levels with unordered glyphs.
nlStartNumber :: Lens' NestingLevel (Maybe Int32)
nlStartNumber
  = lens _nlStartNumber
      (\ s a -> s{_nlStartNumber = a})
      . mapping _Coerce

instance FromJSON NestingLevel where
        parseJSON
          = withObject "NestingLevel"
              (\ o ->
                 NestingLevel' <$>
                   (o .:? "indentFirstLine") <*> (o .:? "glyphFormat")
                     <*> (o .:? "bulletAlignment")
                     <*> (o .:? "indentStart")
                     <*> (o .:? "glyphSymbol")
                     <*> (o .:? "textStyle")
                     <*> (o .:? "glyphType")
                     <*> (o .:? "startNumber"))

instance ToJSON NestingLevel where
        toJSON NestingLevel'{..}
          = object
              (catMaybes
                 [("indentFirstLine" .=) <$> _nlIndentFirstLine,
                  ("glyphFormat" .=) <$> _nlGlyphFormat,
                  ("bulletAlignment" .=) <$> _nlBulletAlignment,
                  ("indentStart" .=) <$> _nlIndentStart,
                  ("glyphSymbol" .=) <$> _nlGlyphSymbol,
                  ("textStyle" .=) <$> _nlTextStyle,
                  ("glyphType" .=) <$> _nlGlyphType,
                  ("startNumber" .=) <$> _nlStartNumber])

-- | Deletes a Footer from the document.
--
-- /See:/ 'deleteFooterRequest' smart constructor.
newtype DeleteFooterRequest =
  DeleteFooterRequest'
    { _dfrFooterId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteFooterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfrFooterId'
deleteFooterRequest
    :: DeleteFooterRequest
deleteFooterRequest = DeleteFooterRequest' {_dfrFooterId = Nothing}


-- | The id of the footer to delete. If this footer is defined on
-- DocumentStyle, the reference to this footer is removed, resulting in no
-- footer of that type for the first section of the document. If this
-- footer is defined on a SectionStyle, the reference to this footer is
-- removed and the footer of that type is now continued from the previous
-- section.
dfrFooterId :: Lens' DeleteFooterRequest (Maybe Text)
dfrFooterId
  = lens _dfrFooterId (\ s a -> s{_dfrFooterId = a})

instance FromJSON DeleteFooterRequest where
        parseJSON
          = withObject "DeleteFooterRequest"
              (\ o -> DeleteFooterRequest' <$> (o .:? "footerId"))

instance ToJSON DeleteFooterRequest where
        toJSON DeleteFooterRequest'{..}
          = object
              (catMaybes [("footerId" .=) <$> _dfrFooterId])

-- | Location of a single cell within a table.
--
-- /See:/ 'tableCellLocation' smart constructor.
data TableCellLocation =
  TableCellLocation'
    { _tclColumnIndex :: !(Maybe (Textual Int32))
    , _tclTableStartLocation :: !(Maybe Location)
    , _tclRowIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableCellLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tclColumnIndex'
--
-- * 'tclTableStartLocation'
--
-- * 'tclRowIndex'
tableCellLocation
    :: TableCellLocation
tableCellLocation =
  TableCellLocation'
    { _tclColumnIndex = Nothing
    , _tclTableStartLocation = Nothing
    , _tclRowIndex = Nothing
    }


-- | The zero-based column index. For example, the second column in the table
-- has a column index of 1.
tclColumnIndex :: Lens' TableCellLocation (Maybe Int32)
tclColumnIndex
  = lens _tclColumnIndex
      (\ s a -> s{_tclColumnIndex = a})
      . mapping _Coerce

-- | The location where the table starts in the document.
tclTableStartLocation :: Lens' TableCellLocation (Maybe Location)
tclTableStartLocation
  = lens _tclTableStartLocation
      (\ s a -> s{_tclTableStartLocation = a})

-- | The zero-based row index. For example, the second row in the table has a
-- row index of 1.
tclRowIndex :: Lens' TableCellLocation (Maybe Int32)
tclRowIndex
  = lens _tclRowIndex (\ s a -> s{_tclRowIndex = a}) .
      mapping _Coerce

instance FromJSON TableCellLocation where
        parseJSON
          = withObject "TableCellLocation"
              (\ o ->
                 TableCellLocation' <$>
                   (o .:? "columnIndex") <*>
                     (o .:? "tableStartLocation")
                     <*> (o .:? "rowIndex"))

instance ToJSON TableCellLocation where
        toJSON TableCellLocation'{..}
          = object
              (catMaybes
                 [("columnIndex" .=) <$> _tclColumnIndex,
                  ("tableStartLocation" .=) <$> _tclTableStartLocation,
                  ("rowIndex" .=) <$> _tclRowIndex])

-- | The result of creating a footnote.
--
-- /See:/ 'createFootNoteResponse' smart constructor.
newtype CreateFootNoteResponse =
  CreateFootNoteResponse'
    { _cfnrFootNoteId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateFootNoteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfnrFootNoteId'
createFootNoteResponse
    :: CreateFootNoteResponse
createFootNoteResponse = CreateFootNoteResponse' {_cfnrFootNoteId = Nothing}


-- | The ID of the created footnote.
cfnrFootNoteId :: Lens' CreateFootNoteResponse (Maybe Text)
cfnrFootNoteId
  = lens _cfnrFootNoteId
      (\ s a -> s{_cfnrFootNoteId = a})

instance FromJSON CreateFootNoteResponse where
        parseJSON
          = withObject "CreateFootNoteResponse"
              (\ o ->
                 CreateFootNoteResponse' <$> (o .:? "footnoteId"))

instance ToJSON CreateFootNoteResponse where
        toJSON CreateFootNoteResponse'{..}
          = object
              (catMaybes [("footnoteId" .=) <$> _cfnrFootNoteId])

-- | Deletes a PositionedObject from the document.
--
-- /See:/ 'deletePositionedObjectRequest' smart constructor.
newtype DeletePositionedObjectRequest =
  DeletePositionedObjectRequest'
    { _dporObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeletePositionedObjectRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dporObjectId'
deletePositionedObjectRequest
    :: DeletePositionedObjectRequest
deletePositionedObjectRequest =
  DeletePositionedObjectRequest' {_dporObjectId = Nothing}


-- | The ID of the positioned object to delete.
dporObjectId :: Lens' DeletePositionedObjectRequest (Maybe Text)
dporObjectId
  = lens _dporObjectId (\ s a -> s{_dporObjectId = a})

instance FromJSON DeletePositionedObjectRequest where
        parseJSON
          = withObject "DeletePositionedObjectRequest"
              (\ o ->
                 DeletePositionedObjectRequest' <$>
                   (o .:? "objectId"))

instance ToJSON DeletePositionedObjectRequest where
        toJSON DeletePositionedObjectRequest'{..}
          = object
              (catMaybes [("objectId" .=) <$> _dporObjectId])

-- | A document footer.
--
-- /See:/ 'footer' smart constructor.
data Footer =
  Footer'
    { _fFooterId :: !(Maybe Text)
    , _fContent :: !(Maybe [StructuralElement])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Footer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fFooterId'
--
-- * 'fContent'
footer
    :: Footer
footer = Footer' {_fFooterId = Nothing, _fContent = Nothing}


-- | The ID of the footer.
fFooterId :: Lens' Footer (Maybe Text)
fFooterId
  = lens _fFooterId (\ s a -> s{_fFooterId = a})

-- | The contents of the footer. The indexes for a footer\'s content begin at
-- zero.
fContent :: Lens' Footer [StructuralElement]
fContent
  = lens _fContent (\ s a -> s{_fContent = a}) .
      _Default
      . _Coerce

instance FromJSON Footer where
        parseJSON
          = withObject "Footer"
              (\ o ->
                 Footer' <$>
                   (o .:? "footerId") <*> (o .:? "content" .!= mempty))

instance ToJSON Footer where
        toJSON Footer'{..}
          = object
              (catMaybes
                 [("footerId" .=) <$> _fFooterId,
                  ("content" .=) <$> _fContent])

-- | An object that is tethered to a Paragraph and positioned relative to the
-- beginning of the paragraph. A PositionedObject contains an
-- EmbeddedObject such as an image.
--
-- /See:/ 'positionedObject' smart constructor.
data PositionedObject =
  PositionedObject'
    { _poSuggestedPositionedObjectPropertiesChanges :: !(Maybe PositionedObjectSuggestedPositionedObjectPropertiesChanges)
    , _poPositionedObjectProperties :: !(Maybe PositionedObjectProperties)
    , _poSuggestedInsertionId :: !(Maybe Text)
    , _poObjectId :: !(Maybe Text)
    , _poSuggestedDeletionIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PositionedObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poSuggestedPositionedObjectPropertiesChanges'
--
-- * 'poPositionedObjectProperties'
--
-- * 'poSuggestedInsertionId'
--
-- * 'poObjectId'
--
-- * 'poSuggestedDeletionIds'
positionedObject
    :: PositionedObject
positionedObject =
  PositionedObject'
    { _poSuggestedPositionedObjectPropertiesChanges = Nothing
    , _poPositionedObjectProperties = Nothing
    , _poSuggestedInsertionId = Nothing
    , _poObjectId = Nothing
    , _poSuggestedDeletionIds = Nothing
    }


-- | The suggested changes to the positioned object properties, keyed by
-- suggestion ID.
poSuggestedPositionedObjectPropertiesChanges :: Lens' PositionedObject (Maybe PositionedObjectSuggestedPositionedObjectPropertiesChanges)
poSuggestedPositionedObjectPropertiesChanges
  = lens _poSuggestedPositionedObjectPropertiesChanges
      (\ s a ->
         s{_poSuggestedPositionedObjectPropertiesChanges = a})

-- | The properties of this positioned object.
poPositionedObjectProperties :: Lens' PositionedObject (Maybe PositionedObjectProperties)
poPositionedObjectProperties
  = lens _poPositionedObjectProperties
      (\ s a -> s{_poPositionedObjectProperties = a})

-- | The suggested insertion ID. If empty, then this is not a suggested
-- insertion.
poSuggestedInsertionId :: Lens' PositionedObject (Maybe Text)
poSuggestedInsertionId
  = lens _poSuggestedInsertionId
      (\ s a -> s{_poSuggestedInsertionId = a})

-- | The ID of this positioned object.
poObjectId :: Lens' PositionedObject (Maybe Text)
poObjectId
  = lens _poObjectId (\ s a -> s{_poObjectId = a})

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
poSuggestedDeletionIds :: Lens' PositionedObject [Text]
poSuggestedDeletionIds
  = lens _poSuggestedDeletionIds
      (\ s a -> s{_poSuggestedDeletionIds = a})
      . _Default
      . _Coerce

instance FromJSON PositionedObject where
        parseJSON
          = withObject "PositionedObject"
              (\ o ->
                 PositionedObject' <$>
                   (o .:? "suggestedPositionedObjectPropertiesChanges")
                     <*> (o .:? "positionedObjectProperties")
                     <*> (o .:? "suggestedInsertionId")
                     <*> (o .:? "objectId")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty))

instance ToJSON PositionedObject where
        toJSON PositionedObject'{..}
          = object
              (catMaybes
                 [("suggestedPositionedObjectPropertiesChanges" .=)
                    <$> _poSuggestedPositionedObjectPropertiesChanges,
                  ("positionedObjectProperties" .=) <$>
                    _poPositionedObjectProperties,
                  ("suggestedInsertionId" .=) <$>
                    _poSuggestedInsertionId,
                  ("objectId" .=) <$> _poObjectId,
                  ("suggestedDeletionIds" .=) <$>
                    _poSuggestedDeletionIds])

-- | A collection of object IDs.
--
-- /See:/ 'objectReferences' smart constructor.
newtype ObjectReferences =
  ObjectReferences'
    { _orObjectIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectReferences' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orObjectIds'
objectReferences
    :: ObjectReferences
objectReferences = ObjectReferences' {_orObjectIds = Nothing}


-- | The object IDs.
orObjectIds :: Lens' ObjectReferences [Text]
orObjectIds
  = lens _orObjectIds (\ s a -> s{_orObjectIds = a}) .
      _Default
      . _Coerce

instance FromJSON ObjectReferences where
        parseJSON
          = withObject "ObjectReferences"
              (\ o ->
                 ObjectReferences' <$> (o .:? "objectIds" .!= mempty))

instance ToJSON ObjectReferences where
        toJSON ObjectReferences'{..}
          = object
              (catMaybes [("objectIds" .=) <$> _orObjectIds])

-- | A mask that indicates which of the fields on the base Bullet have been
-- changed in this suggestion. For any field set to true, there is a new
-- suggested value.
--
-- /See:/ 'bulletSuggestionState' smart constructor.
data BulletSuggestionState =
  BulletSuggestionState'
    { _bssNestingLevelSuggested :: !(Maybe Bool)
    , _bssListIdSuggested :: !(Maybe Bool)
    , _bssTextStyleSuggestionState :: !(Maybe TextStyleSuggestionState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BulletSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bssNestingLevelSuggested'
--
-- * 'bssListIdSuggested'
--
-- * 'bssTextStyleSuggestionState'
bulletSuggestionState
    :: BulletSuggestionState
bulletSuggestionState =
  BulletSuggestionState'
    { _bssNestingLevelSuggested = Nothing
    , _bssListIdSuggested = Nothing
    , _bssTextStyleSuggestionState = Nothing
    }


-- | Indicates if there was a suggested change to the nesting_level.
bssNestingLevelSuggested :: Lens' BulletSuggestionState (Maybe Bool)
bssNestingLevelSuggested
  = lens _bssNestingLevelSuggested
      (\ s a -> s{_bssNestingLevelSuggested = a})

-- | Indicates if there was a suggested change to the list_id.
bssListIdSuggested :: Lens' BulletSuggestionState (Maybe Bool)
bssListIdSuggested
  = lens _bssListIdSuggested
      (\ s a -> s{_bssListIdSuggested = a})

-- | A mask that indicates which of the fields in text style have been
-- changed in this suggestion.
bssTextStyleSuggestionState :: Lens' BulletSuggestionState (Maybe TextStyleSuggestionState)
bssTextStyleSuggestionState
  = lens _bssTextStyleSuggestionState
      (\ s a -> s{_bssTextStyleSuggestionState = a})

instance FromJSON BulletSuggestionState where
        parseJSON
          = withObject "BulletSuggestionState"
              (\ o ->
                 BulletSuggestionState' <$>
                   (o .:? "nestingLevelSuggested") <*>
                     (o .:? "listIdSuggested")
                     <*> (o .:? "textStyleSuggestionState"))

instance ToJSON BulletSuggestionState where
        toJSON BulletSuggestionState'{..}
          = object
              (catMaybes
                 [("nestingLevelSuggested" .=) <$>
                    _bssNestingLevelSuggested,
                  ("listIdSuggested" .=) <$> _bssListIdSuggested,
                  ("textStyleSuggestionState" .=) <$>
                    _bssTextStyleSuggestionState])

-- | A mask that indicates which of the fields on the base ImageProperties
-- have been changed in this suggestion. For any field set to true, there
-- is a new suggested value.
--
-- /See:/ 'imagePropertiesSuggestionState' smart constructor.
data ImagePropertiesSuggestionState =
  ImagePropertiesSuggestionState'
    { _ipssAngleSuggested :: !(Maybe Bool)
    , _ipssContrastSuggested :: !(Maybe Bool)
    , _ipssContentURISuggested :: !(Maybe Bool)
    , _ipssSourceURISuggested :: !(Maybe Bool)
    , _ipssCropPropertiesSuggestionState :: !(Maybe CropPropertiesSuggestionState)
    , _ipssBrightnessSuggested :: !(Maybe Bool)
    , _ipssTransparencySuggested :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImagePropertiesSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipssAngleSuggested'
--
-- * 'ipssContrastSuggested'
--
-- * 'ipssContentURISuggested'
--
-- * 'ipssSourceURISuggested'
--
-- * 'ipssCropPropertiesSuggestionState'
--
-- * 'ipssBrightnessSuggested'
--
-- * 'ipssTransparencySuggested'
imagePropertiesSuggestionState
    :: ImagePropertiesSuggestionState
imagePropertiesSuggestionState =
  ImagePropertiesSuggestionState'
    { _ipssAngleSuggested = Nothing
    , _ipssContrastSuggested = Nothing
    , _ipssContentURISuggested = Nothing
    , _ipssSourceURISuggested = Nothing
    , _ipssCropPropertiesSuggestionState = Nothing
    , _ipssBrightnessSuggested = Nothing
    , _ipssTransparencySuggested = Nothing
    }


-- | Indicates if there was a suggested change to angle.
ipssAngleSuggested :: Lens' ImagePropertiesSuggestionState (Maybe Bool)
ipssAngleSuggested
  = lens _ipssAngleSuggested
      (\ s a -> s{_ipssAngleSuggested = a})

-- | Indicates if there was a suggested change to contrast.
ipssContrastSuggested :: Lens' ImagePropertiesSuggestionState (Maybe Bool)
ipssContrastSuggested
  = lens _ipssContrastSuggested
      (\ s a -> s{_ipssContrastSuggested = a})

-- | Indicates if there was a suggested change to content_uri.
ipssContentURISuggested :: Lens' ImagePropertiesSuggestionState (Maybe Bool)
ipssContentURISuggested
  = lens _ipssContentURISuggested
      (\ s a -> s{_ipssContentURISuggested = a})

-- | Indicates if there was a suggested change to source_uri.
ipssSourceURISuggested :: Lens' ImagePropertiesSuggestionState (Maybe Bool)
ipssSourceURISuggested
  = lens _ipssSourceURISuggested
      (\ s a -> s{_ipssSourceURISuggested = a})

-- | A mask that indicates which of the fields in crop_properties have been
-- changed in this suggestion.
ipssCropPropertiesSuggestionState :: Lens' ImagePropertiesSuggestionState (Maybe CropPropertiesSuggestionState)
ipssCropPropertiesSuggestionState
  = lens _ipssCropPropertiesSuggestionState
      (\ s a -> s{_ipssCropPropertiesSuggestionState = a})

-- | Indicates if there was a suggested change to brightness.
ipssBrightnessSuggested :: Lens' ImagePropertiesSuggestionState (Maybe Bool)
ipssBrightnessSuggested
  = lens _ipssBrightnessSuggested
      (\ s a -> s{_ipssBrightnessSuggested = a})

-- | Indicates if there was a suggested change to transparency.
ipssTransparencySuggested :: Lens' ImagePropertiesSuggestionState (Maybe Bool)
ipssTransparencySuggested
  = lens _ipssTransparencySuggested
      (\ s a -> s{_ipssTransparencySuggested = a})

instance FromJSON ImagePropertiesSuggestionState
         where
        parseJSON
          = withObject "ImagePropertiesSuggestionState"
              (\ o ->
                 ImagePropertiesSuggestionState' <$>
                   (o .:? "angleSuggested") <*>
                     (o .:? "contrastSuggested")
                     <*> (o .:? "contentUriSuggested")
                     <*> (o .:? "sourceUriSuggested")
                     <*> (o .:? "cropPropertiesSuggestionState")
                     <*> (o .:? "brightnessSuggested")
                     <*> (o .:? "transparencySuggested"))

instance ToJSON ImagePropertiesSuggestionState where
        toJSON ImagePropertiesSuggestionState'{..}
          = object
              (catMaybes
                 [("angleSuggested" .=) <$> _ipssAngleSuggested,
                  ("contrastSuggested" .=) <$> _ipssContrastSuggested,
                  ("contentUriSuggested" .=) <$>
                    _ipssContentURISuggested,
                  ("sourceUriSuggested" .=) <$>
                    _ipssSourceURISuggested,
                  ("cropPropertiesSuggestionState" .=) <$>
                    _ipssCropPropertiesSuggestionState,
                  ("brightnessSuggested" .=) <$>
                    _ipssBrightnessSuggested,
                  ("transparencySuggested" .=) <$>
                    _ipssTransparencySuggested])

-- | A mask that indicates which of the fields on the base Shading have been
-- changed in this suggested change. For any field set to true, there is a
-- new suggested value.
--
-- /See:/ 'shadingSuggestionState' smart constructor.
newtype ShadingSuggestionState =
  ShadingSuggestionState'
    { _sssBackgRoundColorSuggested :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShadingSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssBackgRoundColorSuggested'
shadingSuggestionState
    :: ShadingSuggestionState
shadingSuggestionState =
  ShadingSuggestionState' {_sssBackgRoundColorSuggested = Nothing}


-- | Indicates if there was a suggested change to the Shading.
sssBackgRoundColorSuggested :: Lens' ShadingSuggestionState (Maybe Bool)
sssBackgRoundColorSuggested
  = lens _sssBackgRoundColorSuggested
      (\ s a -> s{_sssBackgRoundColorSuggested = a})

instance FromJSON ShadingSuggestionState where
        parseJSON
          = withObject "ShadingSuggestionState"
              (\ o ->
                 ShadingSuggestionState' <$>
                   (o .:? "backgroundColorSuggested"))

instance ToJSON ShadingSuggestionState where
        toJSON ShadingSuggestionState'{..}
          = object
              (catMaybes
                 [("backgroundColorSuggested" .=) <$>
                    _sssBackgRoundColorSuggested])

-- | Output only. The suggested changes to the named styles of the document,
-- keyed by suggestion ID.
--
-- /See:/ 'documentSuggestedNamedStylesChanges' smart constructor.
newtype DocumentSuggestedNamedStylesChanges =
  DocumentSuggestedNamedStylesChanges'
    { _dsnscAddtional :: HashMap Text SuggestedNamedStyles
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentSuggestedNamedStylesChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsnscAddtional'
documentSuggestedNamedStylesChanges
    :: HashMap Text SuggestedNamedStyles -- ^ 'dsnscAddtional'
    -> DocumentSuggestedNamedStylesChanges
documentSuggestedNamedStylesChanges pDsnscAddtional_ =
  DocumentSuggestedNamedStylesChanges'
    {_dsnscAddtional = _Coerce # pDsnscAddtional_}


dsnscAddtional :: Lens' DocumentSuggestedNamedStylesChanges (HashMap Text SuggestedNamedStyles)
dsnscAddtional
  = lens _dsnscAddtional
      (\ s a -> s{_dsnscAddtional = a})
      . _Coerce

instance FromJSON DocumentSuggestedNamedStylesChanges
         where
        parseJSON
          = withObject "DocumentSuggestedNamedStylesChanges"
              (\ o ->
                 DocumentSuggestedNamedStylesChanges' <$>
                   (parseJSONObject o))

instance ToJSON DocumentSuggestedNamedStylesChanges
         where
        toJSON = toJSON . _dsnscAddtional

-- | The contents and style of a cell in a Table.
--
-- /See:/ 'tableCell' smart constructor.
data TableCell =
  TableCell'
    { _tcSuggestedInsertionIds :: !(Maybe [Text])
    , _tcSuggestedTableCellStyleChanges :: !(Maybe TableCellSuggestedTableCellStyleChanges)
    , _tcEndIndex :: !(Maybe (Textual Int32))
    , _tcContent :: !(Maybe [StructuralElement])
    , _tcTableCellStyle :: !(Maybe TableCellStyle)
    , _tcSuggestedDeletionIds :: !(Maybe [Text])
    , _tcStartIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableCell' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcSuggestedInsertionIds'
--
-- * 'tcSuggestedTableCellStyleChanges'
--
-- * 'tcEndIndex'
--
-- * 'tcContent'
--
-- * 'tcTableCellStyle'
--
-- * 'tcSuggestedDeletionIds'
--
-- * 'tcStartIndex'
tableCell
    :: TableCell
tableCell =
  TableCell'
    { _tcSuggestedInsertionIds = Nothing
    , _tcSuggestedTableCellStyleChanges = Nothing
    , _tcEndIndex = Nothing
    , _tcContent = Nothing
    , _tcTableCellStyle = Nothing
    , _tcSuggestedDeletionIds = Nothing
    , _tcStartIndex = Nothing
    }


-- | The suggested insertion IDs. A TableCell may have multiple insertion IDs
-- if it is a nested suggested change. If empty, then this is not a
-- suggested insertion.
tcSuggestedInsertionIds :: Lens' TableCell [Text]
tcSuggestedInsertionIds
  = lens _tcSuggestedInsertionIds
      (\ s a -> s{_tcSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The suggested changes to the table cell style, keyed by suggestion ID.
tcSuggestedTableCellStyleChanges :: Lens' TableCell (Maybe TableCellSuggestedTableCellStyleChanges)
tcSuggestedTableCellStyleChanges
  = lens _tcSuggestedTableCellStyleChanges
      (\ s a -> s{_tcSuggestedTableCellStyleChanges = a})

-- | The zero-based end index of this cell, exclusive, in UTF-16 code units.
tcEndIndex :: Lens' TableCell (Maybe Int32)
tcEndIndex
  = lens _tcEndIndex (\ s a -> s{_tcEndIndex = a}) .
      mapping _Coerce

-- | The content of the cell.
tcContent :: Lens' TableCell [StructuralElement]
tcContent
  = lens _tcContent (\ s a -> s{_tcContent = a}) .
      _Default
      . _Coerce

-- | The style of the cell.
tcTableCellStyle :: Lens' TableCell (Maybe TableCellStyle)
tcTableCellStyle
  = lens _tcTableCellStyle
      (\ s a -> s{_tcTableCellStyle = a})

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
tcSuggestedDeletionIds :: Lens' TableCell [Text]
tcSuggestedDeletionIds
  = lens _tcSuggestedDeletionIds
      (\ s a -> s{_tcSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The zero-based start index of this cell, in UTF-16 code units.
tcStartIndex :: Lens' TableCell (Maybe Int32)
tcStartIndex
  = lens _tcStartIndex (\ s a -> s{_tcStartIndex = a})
      . mapping _Coerce

instance FromJSON TableCell where
        parseJSON
          = withObject "TableCell"
              (\ o ->
                 TableCell' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "suggestedTableCellStyleChanges")
                     <*> (o .:? "endIndex")
                     <*> (o .:? "content" .!= mempty)
                     <*> (o .:? "tableCellStyle")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "startIndex"))

instance ToJSON TableCell where
        toJSON TableCell'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _tcSuggestedInsertionIds,
                  ("suggestedTableCellStyleChanges" .=) <$>
                    _tcSuggestedTableCellStyleChanges,
                  ("endIndex" .=) <$> _tcEndIndex,
                  ("content" .=) <$> _tcContent,
                  ("tableCellStyle" .=) <$> _tcTableCellStyle,
                  ("suggestedDeletionIds" .=) <$>
                    _tcSuggestedDeletionIds,
                  ("startIndex" .=) <$> _tcStartIndex])

-- | A mask that indicates which of the fields on the base
-- SheetsChartReference have been changed in this suggestion. For any field
-- set to true, there is a new suggested value.
--
-- /See:/ 'sheetsChartReferenceSuggestionState' smart constructor.
data SheetsChartReferenceSuggestionState =
  SheetsChartReferenceSuggestionState'
    { _scrssChartIdSuggested :: !(Maybe Bool)
    , _scrssSpreadsheetIdSuggested :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SheetsChartReferenceSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrssChartIdSuggested'
--
-- * 'scrssSpreadsheetIdSuggested'
sheetsChartReferenceSuggestionState
    :: SheetsChartReferenceSuggestionState
sheetsChartReferenceSuggestionState =
  SheetsChartReferenceSuggestionState'
    {_scrssChartIdSuggested = Nothing, _scrssSpreadsheetIdSuggested = Nothing}


-- | Indicates if there was a suggested change to chart_id.
scrssChartIdSuggested :: Lens' SheetsChartReferenceSuggestionState (Maybe Bool)
scrssChartIdSuggested
  = lens _scrssChartIdSuggested
      (\ s a -> s{_scrssChartIdSuggested = a})

-- | Indicates if there was a suggested change to spreadsheet_id.
scrssSpreadsheetIdSuggested :: Lens' SheetsChartReferenceSuggestionState (Maybe Bool)
scrssSpreadsheetIdSuggested
  = lens _scrssSpreadsheetIdSuggested
      (\ s a -> s{_scrssSpreadsheetIdSuggested = a})

instance FromJSON SheetsChartReferenceSuggestionState
         where
        parseJSON
          = withObject "SheetsChartReferenceSuggestionState"
              (\ o ->
                 SheetsChartReferenceSuggestionState' <$>
                   (o .:? "chartIdSuggested") <*>
                     (o .:? "spreadsheetIdSuggested"))

instance ToJSON SheetsChartReferenceSuggestionState
         where
        toJSON SheetsChartReferenceSuggestionState'{..}
          = object
              (catMaybes
                 [("chartIdSuggested" .=) <$> _scrssChartIdSuggested,
                  ("spreadsheetIdSuggested" .=) <$>
                    _scrssSpreadsheetIdSuggested])

-- | A ParagraphElement describes content within a Paragraph.
--
-- /See:/ 'paragraphElement' smart constructor.
data ParagraphElement =
  ParagraphElement'
    { _peAutoText :: !(Maybe AutoText)
    , _pePerson :: !(Maybe Person)
    , _peEndIndex :: !(Maybe (Textual Int32))
    , _peFootNoteReference :: !(Maybe FootNoteReference)
    , _peColumnBreak :: !(Maybe ColumnBreak)
    , _peTextRun :: !(Maybe TextRun)
    , _peEquation :: !(Maybe Equation)
    , _pePageBreak :: !(Maybe PageBreak)
    , _peInlineObjectElement :: !(Maybe InlineObjectElement)
    , _peRichLink :: !(Maybe RichLink)
    , _peHorizontalRule :: !(Maybe HorizontalRule)
    , _peStartIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParagraphElement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peAutoText'
--
-- * 'pePerson'
--
-- * 'peEndIndex'
--
-- * 'peFootNoteReference'
--
-- * 'peColumnBreak'
--
-- * 'peTextRun'
--
-- * 'peEquation'
--
-- * 'pePageBreak'
--
-- * 'peInlineObjectElement'
--
-- * 'peRichLink'
--
-- * 'peHorizontalRule'
--
-- * 'peStartIndex'
paragraphElement
    :: ParagraphElement
paragraphElement =
  ParagraphElement'
    { _peAutoText = Nothing
    , _pePerson = Nothing
    , _peEndIndex = Nothing
    , _peFootNoteReference = Nothing
    , _peColumnBreak = Nothing
    , _peTextRun = Nothing
    , _peEquation = Nothing
    , _pePageBreak = Nothing
    , _peInlineObjectElement = Nothing
    , _peRichLink = Nothing
    , _peHorizontalRule = Nothing
    , _peStartIndex = Nothing
    }


-- | An auto text paragraph element.
peAutoText :: Lens' ParagraphElement (Maybe AutoText)
peAutoText
  = lens _peAutoText (\ s a -> s{_peAutoText = a})

-- | A paragraph element that links to a person or email address.
pePerson :: Lens' ParagraphElement (Maybe Person)
pePerson = lens _pePerson (\ s a -> s{_pePerson = a})

-- | The zero-base end index of this paragraph element, exclusive, in UTF-16
-- code units.
peEndIndex :: Lens' ParagraphElement (Maybe Int32)
peEndIndex
  = lens _peEndIndex (\ s a -> s{_peEndIndex = a}) .
      mapping _Coerce

-- | A footnote reference paragraph element.
peFootNoteReference :: Lens' ParagraphElement (Maybe FootNoteReference)
peFootNoteReference
  = lens _peFootNoteReference
      (\ s a -> s{_peFootNoteReference = a})

-- | A column break paragraph element.
peColumnBreak :: Lens' ParagraphElement (Maybe ColumnBreak)
peColumnBreak
  = lens _peColumnBreak
      (\ s a -> s{_peColumnBreak = a})

-- | A text run paragraph element.
peTextRun :: Lens' ParagraphElement (Maybe TextRun)
peTextRun
  = lens _peTextRun (\ s a -> s{_peTextRun = a})

-- | An equation paragraph element.
peEquation :: Lens' ParagraphElement (Maybe Equation)
peEquation
  = lens _peEquation (\ s a -> s{_peEquation = a})

-- | A page break paragraph element.
pePageBreak :: Lens' ParagraphElement (Maybe PageBreak)
pePageBreak
  = lens _pePageBreak (\ s a -> s{_pePageBreak = a})

-- | An inline object paragraph element.
peInlineObjectElement :: Lens' ParagraphElement (Maybe InlineObjectElement)
peInlineObjectElement
  = lens _peInlineObjectElement
      (\ s a -> s{_peInlineObjectElement = a})

-- | A paragraph element that links to a Google resource (such as a file in
-- Drive, a Youtube video, a Calendar event, etc.)
peRichLink :: Lens' ParagraphElement (Maybe RichLink)
peRichLink
  = lens _peRichLink (\ s a -> s{_peRichLink = a})

-- | A horizontal rule paragraph element.
peHorizontalRule :: Lens' ParagraphElement (Maybe HorizontalRule)
peHorizontalRule
  = lens _peHorizontalRule
      (\ s a -> s{_peHorizontalRule = a})

-- | The zero-based start index of this paragraph element, in UTF-16 code
-- units.
peStartIndex :: Lens' ParagraphElement (Maybe Int32)
peStartIndex
  = lens _peStartIndex (\ s a -> s{_peStartIndex = a})
      . mapping _Coerce

instance FromJSON ParagraphElement where
        parseJSON
          = withObject "ParagraphElement"
              (\ o ->
                 ParagraphElement' <$>
                   (o .:? "autoText") <*> (o .:? "person") <*>
                     (o .:? "endIndex")
                     <*> (o .:? "footnoteReference")
                     <*> (o .:? "columnBreak")
                     <*> (o .:? "textRun")
                     <*> (o .:? "equation")
                     <*> (o .:? "pageBreak")
                     <*> (o .:? "inlineObjectElement")
                     <*> (o .:? "richLink")
                     <*> (o .:? "horizontalRule")
                     <*> (o .:? "startIndex"))

instance ToJSON ParagraphElement where
        toJSON ParagraphElement'{..}
          = object
              (catMaybes
                 [("autoText" .=) <$> _peAutoText,
                  ("person" .=) <$> _pePerson,
                  ("endIndex" .=) <$> _peEndIndex,
                  ("footnoteReference" .=) <$> _peFootNoteReference,
                  ("columnBreak" .=) <$> _peColumnBreak,
                  ("textRun" .=) <$> _peTextRun,
                  ("equation" .=) <$> _peEquation,
                  ("pageBreak" .=) <$> _pePageBreak,
                  ("inlineObjectElement" .=) <$>
                    _peInlineObjectElement,
                  ("richLink" .=) <$> _peRichLink,
                  ("horizontalRule" .=) <$> _peHorizontalRule,
                  ("startIndex" .=) <$> _peStartIndex])

-- | A ParagraphElement representing a horizontal line.
--
-- /See:/ 'horizontalRule' smart constructor.
data HorizontalRule =
  HorizontalRule'
    { _hrSuggestedInsertionIds :: !(Maybe [Text])
    , _hrSuggestedTextStyleChanges :: !(Maybe HorizontalRuleSuggestedTextStyleChanges)
    , _hrSuggestedDeletionIds :: !(Maybe [Text])
    , _hrTextStyle :: !(Maybe TextStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HorizontalRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hrSuggestedInsertionIds'
--
-- * 'hrSuggestedTextStyleChanges'
--
-- * 'hrSuggestedDeletionIds'
--
-- * 'hrTextStyle'
horizontalRule
    :: HorizontalRule
horizontalRule =
  HorizontalRule'
    { _hrSuggestedInsertionIds = Nothing
    , _hrSuggestedTextStyleChanges = Nothing
    , _hrSuggestedDeletionIds = Nothing
    , _hrTextStyle = Nothing
    }


-- | The suggested insertion IDs. A HorizontalRule may have multiple
-- insertion IDs if it is a nested suggested change. If empty, then this is
-- not a suggested insertion.
hrSuggestedInsertionIds :: Lens' HorizontalRule [Text]
hrSuggestedInsertionIds
  = lens _hrSuggestedInsertionIds
      (\ s a -> s{_hrSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The suggested text style changes to this HorizontalRule, keyed by
-- suggestion ID.
hrSuggestedTextStyleChanges :: Lens' HorizontalRule (Maybe HorizontalRuleSuggestedTextStyleChanges)
hrSuggestedTextStyleChanges
  = lens _hrSuggestedTextStyleChanges
      (\ s a -> s{_hrSuggestedTextStyleChanges = a})

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
hrSuggestedDeletionIds :: Lens' HorizontalRule [Text]
hrSuggestedDeletionIds
  = lens _hrSuggestedDeletionIds
      (\ s a -> s{_hrSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The text style of this HorizontalRule. Similar to text content, like
-- text runs and footnote references, the text style of a horizontal rule
-- can affect content layout as well as the styling of text inserted
-- adjacent to it.
hrTextStyle :: Lens' HorizontalRule (Maybe TextStyle)
hrTextStyle
  = lens _hrTextStyle (\ s a -> s{_hrTextStyle = a})

instance FromJSON HorizontalRule where
        parseJSON
          = withObject "HorizontalRule"
              (\ o ->
                 HorizontalRule' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "suggestedTextStyleChanges")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "textStyle"))

instance ToJSON HorizontalRule where
        toJSON HorizontalRule'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _hrSuggestedInsertionIds,
                  ("suggestedTextStyleChanges" .=) <$>
                    _hrSuggestedTextStyleChanges,
                  ("suggestedDeletionIds" .=) <$>
                    _hrSuggestedDeletionIds,
                  ("textStyle" .=) <$> _hrTextStyle])

-- | A mask that indicates which of the fields on the base EmbeddedObject
-- have been changed in this suggestion. For any field set to true, there
-- is a new suggested value.
--
-- /See:/ 'embeddedObjectSuggestionState' smart constructor.
data EmbeddedObjectSuggestionState =
  EmbeddedObjectSuggestionState'
    { _eossEmbeddedObjectBOrderSuggestionState :: !(Maybe EmbeddedObjectBOrderSuggestionState)
    , _eossEmbeddedDrawingPropertiesSuggestionState :: !(Maybe EmbeddedDrawingPropertiesSuggestionState)
    , _eossTitleSuggested :: !(Maybe Bool)
    , _eossMarginTopSuggested :: !(Maybe Bool)
    , _eossSizeSuggestionState :: !(Maybe SizeSuggestionState)
    , _eossMarginBottomSuggested :: !(Maybe Bool)
    , _eossImagePropertiesSuggestionState :: !(Maybe ImagePropertiesSuggestionState)
    , _eossMarginLeftSuggested :: !(Maybe Bool)
    , _eossLinkedContentReferenceSuggestionState :: !(Maybe LinkedContentReferenceSuggestionState)
    , _eossDescriptionSuggested :: !(Maybe Bool)
    , _eossMarginRightSuggested :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EmbeddedObjectSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eossEmbeddedObjectBOrderSuggestionState'
--
-- * 'eossEmbeddedDrawingPropertiesSuggestionState'
--
-- * 'eossTitleSuggested'
--
-- * 'eossMarginTopSuggested'
--
-- * 'eossSizeSuggestionState'
--
-- * 'eossMarginBottomSuggested'
--
-- * 'eossImagePropertiesSuggestionState'
--
-- * 'eossMarginLeftSuggested'
--
-- * 'eossLinkedContentReferenceSuggestionState'
--
-- * 'eossDescriptionSuggested'
--
-- * 'eossMarginRightSuggested'
embeddedObjectSuggestionState
    :: EmbeddedObjectSuggestionState
embeddedObjectSuggestionState =
  EmbeddedObjectSuggestionState'
    { _eossEmbeddedObjectBOrderSuggestionState = Nothing
    , _eossEmbeddedDrawingPropertiesSuggestionState = Nothing
    , _eossTitleSuggested = Nothing
    , _eossMarginTopSuggested = Nothing
    , _eossSizeSuggestionState = Nothing
    , _eossMarginBottomSuggested = Nothing
    , _eossImagePropertiesSuggestionState = Nothing
    , _eossMarginLeftSuggested = Nothing
    , _eossLinkedContentReferenceSuggestionState = Nothing
    , _eossDescriptionSuggested = Nothing
    , _eossMarginRightSuggested = Nothing
    }


-- | A mask that indicates which of the fields in embedded_object_border have
-- been changed in this suggestion.
eossEmbeddedObjectBOrderSuggestionState :: Lens' EmbeddedObjectSuggestionState (Maybe EmbeddedObjectBOrderSuggestionState)
eossEmbeddedObjectBOrderSuggestionState
  = lens _eossEmbeddedObjectBOrderSuggestionState
      (\ s a ->
         s{_eossEmbeddedObjectBOrderSuggestionState = a})

-- | A mask that indicates which of the fields in embedded_drawing_properties
-- have been changed in this suggestion.
eossEmbeddedDrawingPropertiesSuggestionState :: Lens' EmbeddedObjectSuggestionState (Maybe EmbeddedDrawingPropertiesSuggestionState)
eossEmbeddedDrawingPropertiesSuggestionState
  = lens _eossEmbeddedDrawingPropertiesSuggestionState
      (\ s a ->
         s{_eossEmbeddedDrawingPropertiesSuggestionState = a})

-- | Indicates if there was a suggested change to title.
eossTitleSuggested :: Lens' EmbeddedObjectSuggestionState (Maybe Bool)
eossTitleSuggested
  = lens _eossTitleSuggested
      (\ s a -> s{_eossTitleSuggested = a})

-- | Indicates if there was a suggested change to margin_top.
eossMarginTopSuggested :: Lens' EmbeddedObjectSuggestionState (Maybe Bool)
eossMarginTopSuggested
  = lens _eossMarginTopSuggested
      (\ s a -> s{_eossMarginTopSuggested = a})

-- | A mask that indicates which of the fields in size have been changed in
-- this suggestion.
eossSizeSuggestionState :: Lens' EmbeddedObjectSuggestionState (Maybe SizeSuggestionState)
eossSizeSuggestionState
  = lens _eossSizeSuggestionState
      (\ s a -> s{_eossSizeSuggestionState = a})

-- | Indicates if there was a suggested change to margin_bottom.
eossMarginBottomSuggested :: Lens' EmbeddedObjectSuggestionState (Maybe Bool)
eossMarginBottomSuggested
  = lens _eossMarginBottomSuggested
      (\ s a -> s{_eossMarginBottomSuggested = a})

-- | A mask that indicates which of the fields in image_properties have been
-- changed in this suggestion.
eossImagePropertiesSuggestionState :: Lens' EmbeddedObjectSuggestionState (Maybe ImagePropertiesSuggestionState)
eossImagePropertiesSuggestionState
  = lens _eossImagePropertiesSuggestionState
      (\ s a -> s{_eossImagePropertiesSuggestionState = a})

-- | Indicates if there was a suggested change to margin_left.
eossMarginLeftSuggested :: Lens' EmbeddedObjectSuggestionState (Maybe Bool)
eossMarginLeftSuggested
  = lens _eossMarginLeftSuggested
      (\ s a -> s{_eossMarginLeftSuggested = a})

-- | A mask that indicates which of the fields in linked_content_reference
-- have been changed in this suggestion.
eossLinkedContentReferenceSuggestionState :: Lens' EmbeddedObjectSuggestionState (Maybe LinkedContentReferenceSuggestionState)
eossLinkedContentReferenceSuggestionState
  = lens _eossLinkedContentReferenceSuggestionState
      (\ s a ->
         s{_eossLinkedContentReferenceSuggestionState = a})

-- | Indicates if there was a suggested change to description.
eossDescriptionSuggested :: Lens' EmbeddedObjectSuggestionState (Maybe Bool)
eossDescriptionSuggested
  = lens _eossDescriptionSuggested
      (\ s a -> s{_eossDescriptionSuggested = a})

-- | Indicates if there was a suggested change to margin_right.
eossMarginRightSuggested :: Lens' EmbeddedObjectSuggestionState (Maybe Bool)
eossMarginRightSuggested
  = lens _eossMarginRightSuggested
      (\ s a -> s{_eossMarginRightSuggested = a})

instance FromJSON EmbeddedObjectSuggestionState where
        parseJSON
          = withObject "EmbeddedObjectSuggestionState"
              (\ o ->
                 EmbeddedObjectSuggestionState' <$>
                   (o .:? "embeddedObjectBorderSuggestionState") <*>
                     (o .:? "embeddedDrawingPropertiesSuggestionState")
                     <*> (o .:? "titleSuggested")
                     <*> (o .:? "marginTopSuggested")
                     <*> (o .:? "sizeSuggestionState")
                     <*> (o .:? "marginBottomSuggested")
                     <*> (o .:? "imagePropertiesSuggestionState")
                     <*> (o .:? "marginLeftSuggested")
                     <*> (o .:? "linkedContentReferenceSuggestionState")
                     <*> (o .:? "descriptionSuggested")
                     <*> (o .:? "marginRightSuggested"))

instance ToJSON EmbeddedObjectSuggestionState where
        toJSON EmbeddedObjectSuggestionState'{..}
          = object
              (catMaybes
                 [("embeddedObjectBorderSuggestionState" .=) <$>
                    _eossEmbeddedObjectBOrderSuggestionState,
                  ("embeddedDrawingPropertiesSuggestionState" .=) <$>
                    _eossEmbeddedDrawingPropertiesSuggestionState,
                  ("titleSuggested" .=) <$> _eossTitleSuggested,
                  ("marginTopSuggested" .=) <$>
                    _eossMarginTopSuggested,
                  ("sizeSuggestionState" .=) <$>
                    _eossSizeSuggestionState,
                  ("marginBottomSuggested" .=) <$>
                    _eossMarginBottomSuggested,
                  ("imagePropertiesSuggestionState" .=) <$>
                    _eossImagePropertiesSuggestionState,
                  ("marginLeftSuggested" .=) <$>
                    _eossMarginLeftSuggested,
                  ("linkedContentReferenceSuggestionState" .=) <$>
                    _eossLinkedContentReferenceSuggestionState,
                  ("descriptionSuggested" .=) <$>
                    _eossDescriptionSuggested,
                  ("marginRightSuggested" .=) <$>
                    _eossMarginRightSuggested])

-- | A link to a Google resource (e.g., a file in Drive, a YouTube video, a
-- Calendar event, etc.).
--
-- /See:/ 'richLink' smart constructor.
data RichLink =
  RichLink'
    { _rlSuggestedInsertionIds :: !(Maybe [Text])
    , _rlSuggestedTextStyleChanges :: !(Maybe RichLinkSuggestedTextStyleChanges)
    , _rlRichLinkId :: !(Maybe Text)
    , _rlRichLinkProperties :: !(Maybe RichLinkProperties)
    , _rlSuggestedDeletionIds :: !(Maybe [Text])
    , _rlTextStyle :: !(Maybe TextStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RichLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlSuggestedInsertionIds'
--
-- * 'rlSuggestedTextStyleChanges'
--
-- * 'rlRichLinkId'
--
-- * 'rlRichLinkProperties'
--
-- * 'rlSuggestedDeletionIds'
--
-- * 'rlTextStyle'
richLink
    :: RichLink
richLink =
  RichLink'
    { _rlSuggestedInsertionIds = Nothing
    , _rlSuggestedTextStyleChanges = Nothing
    , _rlRichLinkId = Nothing
    , _rlRichLinkProperties = Nothing
    , _rlSuggestedDeletionIds = Nothing
    , _rlTextStyle = Nothing
    }


-- | IDs for suggestions that insert this link into the document. A RichLink
-- might have multiple insertion IDs if it is a nested suggested change (a
-- suggestion within a suggestion made by a different user, for example).
-- If empty, then this person link isn\'t a suggested insertion.
rlSuggestedInsertionIds :: Lens' RichLink [Text]
rlSuggestedInsertionIds
  = lens _rlSuggestedInsertionIds
      (\ s a -> s{_rlSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The suggested text style changes to this RichLink, keyed by suggestion
-- ID.
rlSuggestedTextStyleChanges :: Lens' RichLink (Maybe RichLinkSuggestedTextStyleChanges)
rlSuggestedTextStyleChanges
  = lens _rlSuggestedTextStyleChanges
      (\ s a -> s{_rlSuggestedTextStyleChanges = a})

-- | Output only. The ID of this link.
rlRichLinkId :: Lens' RichLink (Maybe Text)
rlRichLinkId
  = lens _rlRichLinkId (\ s a -> s{_rlRichLinkId = a})

-- | Output only. The properties of this RichLink. This field is always
-- present.
rlRichLinkProperties :: Lens' RichLink (Maybe RichLinkProperties)
rlRichLinkProperties
  = lens _rlRichLinkProperties
      (\ s a -> s{_rlRichLinkProperties = a})

-- | IDs for suggestions that remove this link from the document. A RichLink
-- might have multiple deletion IDs if, for example, multiple users suggest
-- to delete it. If empty, then this person link isn\'t suggested for
-- deletion.
rlSuggestedDeletionIds :: Lens' RichLink [Text]
rlSuggestedDeletionIds
  = lens _rlSuggestedDeletionIds
      (\ s a -> s{_rlSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The text style of this RichLink.
rlTextStyle :: Lens' RichLink (Maybe TextStyle)
rlTextStyle
  = lens _rlTextStyle (\ s a -> s{_rlTextStyle = a})

instance FromJSON RichLink where
        parseJSON
          = withObject "RichLink"
              (\ o ->
                 RichLink' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "suggestedTextStyleChanges")
                     <*> (o .:? "richLinkId")
                     <*> (o .:? "richLinkProperties")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "textStyle"))

instance ToJSON RichLink where
        toJSON RichLink'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _rlSuggestedInsertionIds,
                  ("suggestedTextStyleChanges" .=) <$>
                    _rlSuggestedTextStyleChanges,
                  ("richLinkId" .=) <$> _rlRichLinkId,
                  ("richLinkProperties" .=) <$> _rlRichLinkProperties,
                  ("suggestedDeletionIds" .=) <$>
                    _rlSuggestedDeletionIds,
                  ("textStyle" .=) <$> _rlTextStyle])

-- | Inserts a table at the specified location. A newline character will be
-- inserted before the inserted table.
--
-- /See:/ 'insertTableRequest' smart constructor.
data InsertTableRequest =
  InsertTableRequest'
    { _itrLocation :: !(Maybe Location)
    , _itrEndOfSegmentLocation :: !(Maybe EndOfSegmentLocation)
    , _itrRows :: !(Maybe (Textual Int32))
    , _itrColumns :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InsertTableRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itrLocation'
--
-- * 'itrEndOfSegmentLocation'
--
-- * 'itrRows'
--
-- * 'itrColumns'
insertTableRequest
    :: InsertTableRequest
insertTableRequest =
  InsertTableRequest'
    { _itrLocation = Nothing
    , _itrEndOfSegmentLocation = Nothing
    , _itrRows = Nothing
    , _itrColumns = Nothing
    }


-- | Inserts the table at a specific model index. A newline character will be
-- inserted before the inserted table, therefore the table start index will
-- be at the specified location index + 1. The table must be inserted
-- inside the bounds of an existing Paragraph. For instance, it cannot be
-- inserted at a table\'s start index (i.e. between an existing table and
-- its preceding paragraph). Tables cannot be inserted inside a footnote or
-- equation.
itrLocation :: Lens' InsertTableRequest (Maybe Location)
itrLocation
  = lens _itrLocation (\ s a -> s{_itrLocation = a})

-- | Inserts the table at the end of the given header, footer or document
-- body. A newline character will be inserted before the inserted table.
-- Tables cannot be inserted inside a footnote.
itrEndOfSegmentLocation :: Lens' InsertTableRequest (Maybe EndOfSegmentLocation)
itrEndOfSegmentLocation
  = lens _itrEndOfSegmentLocation
      (\ s a -> s{_itrEndOfSegmentLocation = a})

-- | The number of rows in the table.
itrRows :: Lens' InsertTableRequest (Maybe Int32)
itrRows
  = lens _itrRows (\ s a -> s{_itrRows = a}) .
      mapping _Coerce

-- | The number of columns in the table.
itrColumns :: Lens' InsertTableRequest (Maybe Int32)
itrColumns
  = lens _itrColumns (\ s a -> s{_itrColumns = a}) .
      mapping _Coerce

instance FromJSON InsertTableRequest where
        parseJSON
          = withObject "InsertTableRequest"
              (\ o ->
                 InsertTableRequest' <$>
                   (o .:? "location") <*> (o .:? "endOfSegmentLocation")
                     <*> (o .:? "rows")
                     <*> (o .:? "columns"))

instance ToJSON InsertTableRequest where
        toJSON InsertTableRequest'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _itrLocation,
                  ("endOfSegmentLocation" .=) <$>
                    _itrEndOfSegmentLocation,
                  ("rows" .=) <$> _itrRows,
                  ("columns" .=) <$> _itrColumns])

-- | A suggested change to InlineObjectProperties.
--
-- /See:/ 'suggestedInlineObjectProperties' smart constructor.
data SuggestedInlineObjectProperties =
  SuggestedInlineObjectProperties'
    { _siopInlineObjectProperties :: !(Maybe InlineObjectProperties)
    , _siopInlineObjectPropertiesSuggestionState :: !(Maybe InlineObjectPropertiesSuggestionState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestedInlineObjectProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siopInlineObjectProperties'
--
-- * 'siopInlineObjectPropertiesSuggestionState'
suggestedInlineObjectProperties
    :: SuggestedInlineObjectProperties
suggestedInlineObjectProperties =
  SuggestedInlineObjectProperties'
    { _siopInlineObjectProperties = Nothing
    , _siopInlineObjectPropertiesSuggestionState = Nothing
    }


-- | An InlineObjectProperties that only includes the changes made in this
-- suggestion. This can be used along with the
-- inline_object_properties_suggestion_state to see which fields have
-- changed and their new values.
siopInlineObjectProperties :: Lens' SuggestedInlineObjectProperties (Maybe InlineObjectProperties)
siopInlineObjectProperties
  = lens _siopInlineObjectProperties
      (\ s a -> s{_siopInlineObjectProperties = a})

-- | A mask that indicates which of the fields on the base
-- InlineObjectProperties have been changed in this suggestion.
siopInlineObjectPropertiesSuggestionState :: Lens' SuggestedInlineObjectProperties (Maybe InlineObjectPropertiesSuggestionState)
siopInlineObjectPropertiesSuggestionState
  = lens _siopInlineObjectPropertiesSuggestionState
      (\ s a ->
         s{_siopInlineObjectPropertiesSuggestionState = a})

instance FromJSON SuggestedInlineObjectProperties
         where
        parseJSON
          = withObject "SuggestedInlineObjectProperties"
              (\ o ->
                 SuggestedInlineObjectProperties' <$>
                   (o .:? "inlineObjectProperties") <*>
                     (o .:? "inlineObjectPropertiesSuggestionState"))

instance ToJSON SuggestedInlineObjectProperties where
        toJSON SuggestedInlineObjectProperties'{..}
          = object
              (catMaybes
                 [("inlineObjectProperties" .=) <$>
                    _siopInlineObjectProperties,
                  ("inlineObjectPropertiesSuggestionState" .=) <$>
                    _siopInlineObjectPropertiesSuggestionState])

-- | A mask that indicates which of the fields on the base
-- LinkedContentReference have been changed in this suggestion. For any
-- field set to true, there is a new suggested value.
--
-- /See:/ 'linkedContentReferenceSuggestionState' smart constructor.
newtype LinkedContentReferenceSuggestionState =
  LinkedContentReferenceSuggestionState'
    { _lcrssSheetsChartReferenceSuggestionState :: Maybe SheetsChartReferenceSuggestionState
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LinkedContentReferenceSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrssSheetsChartReferenceSuggestionState'
linkedContentReferenceSuggestionState
    :: LinkedContentReferenceSuggestionState
linkedContentReferenceSuggestionState =
  LinkedContentReferenceSuggestionState'
    {_lcrssSheetsChartReferenceSuggestionState = Nothing}


-- | A mask that indicates which of the fields in sheets_chart_reference have
-- been changed in this suggestion.
lcrssSheetsChartReferenceSuggestionState :: Lens' LinkedContentReferenceSuggestionState (Maybe SheetsChartReferenceSuggestionState)
lcrssSheetsChartReferenceSuggestionState
  = lens _lcrssSheetsChartReferenceSuggestionState
      (\ s a ->
         s{_lcrssSheetsChartReferenceSuggestionState = a})

instance FromJSON
           LinkedContentReferenceSuggestionState
         where
        parseJSON
          = withObject "LinkedContentReferenceSuggestionState"
              (\ o ->
                 LinkedContentReferenceSuggestionState' <$>
                   (o .:? "sheetsChartReferenceSuggestionState"))

instance ToJSON LinkedContentReferenceSuggestionState
         where
        toJSON LinkedContentReferenceSuggestionState'{..}
          = object
              (catMaybes
                 [("sheetsChartReferenceSuggestionState" .=) <$>
                    _lcrssSheetsChartReferenceSuggestionState])

-- | Replaces the contents of the specified NamedRange or NamedRanges with
-- the given replacement content. Note that an individual NamedRange may
-- consist of multiple discontinuous ranges. In this case, only the content
-- in the first range will be replaced. The other ranges and their content
-- will be deleted. In cases where replacing or deleting any ranges would
-- result in an invalid document structure, a 400 bad request error is
-- returned.
--
-- /See:/ 'replaceNamedRangeContentRequest' smart constructor.
data ReplaceNamedRangeContentRequest =
  ReplaceNamedRangeContentRequest'
    { _rnrcrText :: !(Maybe Text)
    , _rnrcrNamedRangeName :: !(Maybe Text)
    , _rnrcrNamedRangeId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplaceNamedRangeContentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnrcrText'
--
-- * 'rnrcrNamedRangeName'
--
-- * 'rnrcrNamedRangeId'
replaceNamedRangeContentRequest
    :: ReplaceNamedRangeContentRequest
replaceNamedRangeContentRequest =
  ReplaceNamedRangeContentRequest'
    { _rnrcrText = Nothing
    , _rnrcrNamedRangeName = Nothing
    , _rnrcrNamedRangeId = Nothing
    }


-- | Replaces the content of the specified named range(s) with the given
-- text.
rnrcrText :: Lens' ReplaceNamedRangeContentRequest (Maybe Text)
rnrcrText
  = lens _rnrcrText (\ s a -> s{_rnrcrText = a})

-- | The name of the NamedRanges whose content will be replaced. If there are
-- multiple named ranges with the given name, then the content of each one
-- will be replaced. If there are no named ranges with the given name, then
-- the request will be a no-op.
rnrcrNamedRangeName :: Lens' ReplaceNamedRangeContentRequest (Maybe Text)
rnrcrNamedRangeName
  = lens _rnrcrNamedRangeName
      (\ s a -> s{_rnrcrNamedRangeName = a})

-- | The ID of the named range whose content will be replaced. If there is no
-- named range with the given ID a 400 bad request error is returned.
rnrcrNamedRangeId :: Lens' ReplaceNamedRangeContentRequest (Maybe Text)
rnrcrNamedRangeId
  = lens _rnrcrNamedRangeId
      (\ s a -> s{_rnrcrNamedRangeId = a})

instance FromJSON ReplaceNamedRangeContentRequest
         where
        parseJSON
          = withObject "ReplaceNamedRangeContentRequest"
              (\ o ->
                 ReplaceNamedRangeContentRequest' <$>
                   (o .:? "text") <*> (o .:? "namedRangeName") <*>
                     (o .:? "namedRangeId"))

instance ToJSON ReplaceNamedRangeContentRequest where
        toJSON ReplaceNamedRangeContentRequest'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _rnrcrText,
                  ("namedRangeName" .=) <$> _rnrcrNamedRangeName,
                  ("namedRangeId" .=) <$> _rnrcrNamedRangeId])

-- | The suggested text style changes to this InlineObject, keyed by
-- suggestion ID.
--
-- /See:/ 'inlineObjectElementSuggestedTextStyleChanges' smart constructor.
newtype InlineObjectElementSuggestedTextStyleChanges =
  InlineObjectElementSuggestedTextStyleChanges'
    { _ioestscAddtional :: HashMap Text SuggestedTextStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InlineObjectElementSuggestedTextStyleChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ioestscAddtional'
inlineObjectElementSuggestedTextStyleChanges
    :: HashMap Text SuggestedTextStyle -- ^ 'ioestscAddtional'
    -> InlineObjectElementSuggestedTextStyleChanges
inlineObjectElementSuggestedTextStyleChanges pIoestscAddtional_ =
  InlineObjectElementSuggestedTextStyleChanges'
    {_ioestscAddtional = _Coerce # pIoestscAddtional_}


ioestscAddtional :: Lens' InlineObjectElementSuggestedTextStyleChanges (HashMap Text SuggestedTextStyle)
ioestscAddtional
  = lens _ioestscAddtional
      (\ s a -> s{_ioestscAddtional = a})
      . _Coerce

instance FromJSON
           InlineObjectElementSuggestedTextStyleChanges
         where
        parseJSON
          = withObject
              "InlineObjectElementSuggestedTextStyleChanges"
              (\ o ->
                 InlineObjectElementSuggestedTextStyleChanges' <$>
                   (parseJSONObject o))

instance ToJSON
           InlineObjectElementSuggestedTextStyleChanges
         where
        toJSON = toJSON . _ioestscAddtional

-- | A StructuralElement describes content that provides structure to the
-- document.
--
-- /See:/ 'structuralElement' smart constructor.
data StructuralElement =
  StructuralElement'
    { _seTableOfContents :: !(Maybe TableOfContents)
    , _seParagraph :: !(Maybe Paragraph)
    , _seEndIndex :: !(Maybe (Textual Int32))
    , _seTable :: !(Maybe Table)
    , _seStartIndex :: !(Maybe (Textual Int32))
    , _seSectionBreak :: !(Maybe SectionBreak)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StructuralElement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seTableOfContents'
--
-- * 'seParagraph'
--
-- * 'seEndIndex'
--
-- * 'seTable'
--
-- * 'seStartIndex'
--
-- * 'seSectionBreak'
structuralElement
    :: StructuralElement
structuralElement =
  StructuralElement'
    { _seTableOfContents = Nothing
    , _seParagraph = Nothing
    , _seEndIndex = Nothing
    , _seTable = Nothing
    , _seStartIndex = Nothing
    , _seSectionBreak = Nothing
    }


-- | A table of contents type of structural element.
seTableOfContents :: Lens' StructuralElement (Maybe TableOfContents)
seTableOfContents
  = lens _seTableOfContents
      (\ s a -> s{_seTableOfContents = a})

-- | A paragraph type of structural element.
seParagraph :: Lens' StructuralElement (Maybe Paragraph)
seParagraph
  = lens _seParagraph (\ s a -> s{_seParagraph = a})

-- | The zero-based end index of this structural element, exclusive, in
-- UTF-16 code units.
seEndIndex :: Lens' StructuralElement (Maybe Int32)
seEndIndex
  = lens _seEndIndex (\ s a -> s{_seEndIndex = a}) .
      mapping _Coerce

-- | A table type of structural element.
seTable :: Lens' StructuralElement (Maybe Table)
seTable = lens _seTable (\ s a -> s{_seTable = a})

-- | The zero-based start index of this structural element, in UTF-16 code
-- units.
seStartIndex :: Lens' StructuralElement (Maybe Int32)
seStartIndex
  = lens _seStartIndex (\ s a -> s{_seStartIndex = a})
      . mapping _Coerce

-- | A section break type of structural element.
seSectionBreak :: Lens' StructuralElement (Maybe SectionBreak)
seSectionBreak
  = lens _seSectionBreak
      (\ s a -> s{_seSectionBreak = a})

instance FromJSON StructuralElement where
        parseJSON
          = withObject "StructuralElement"
              (\ o ->
                 StructuralElement' <$>
                   (o .:? "tableOfContents") <*> (o .:? "paragraph") <*>
                     (o .:? "endIndex")
                     <*> (o .:? "table")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "sectionBreak"))

instance ToJSON StructuralElement where
        toJSON StructuralElement'{..}
          = object
              (catMaybes
                 [("tableOfContents" .=) <$> _seTableOfContents,
                  ("paragraph" .=) <$> _seParagraph,
                  ("endIndex" .=) <$> _seEndIndex,
                  ("table" .=) <$> _seTable,
                  ("startIndex" .=) <$> _seStartIndex,
                  ("sectionBreak" .=) <$> _seSectionBreak])

-- | Deletes bullets from all of the paragraphs that overlap with the given
-- range. The nesting level of each paragraph will be visually preserved by
-- adding indent to the start of the corresponding paragraph.
--
-- /See:/ 'deleteParagraphBulletsRequest' smart constructor.
newtype DeleteParagraphBulletsRequest =
  DeleteParagraphBulletsRequest'
    { _dpbrRange :: Maybe Range
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteParagraphBulletsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpbrRange'
deleteParagraphBulletsRequest
    :: DeleteParagraphBulletsRequest
deleteParagraphBulletsRequest =
  DeleteParagraphBulletsRequest' {_dpbrRange = Nothing}


-- | The range to delete bullets from.
dpbrRange :: Lens' DeleteParagraphBulletsRequest (Maybe Range)
dpbrRange
  = lens _dpbrRange (\ s a -> s{_dpbrRange = a})

instance FromJSON DeleteParagraphBulletsRequest where
        parseJSON
          = withObject "DeleteParagraphBulletsRequest"
              (\ o ->
                 DeleteParagraphBulletsRequest' <$> (o .:? "range"))

instance ToJSON DeleteParagraphBulletsRequest where
        toJSON DeleteParagraphBulletsRequest'{..}
          = object (catMaybes [("range" .=) <$> _dpbrRange])

-- | Request message for BatchUpdateDocument.
--
-- /See:/ 'batchUpdateDocumentRequest' smart constructor.
data BatchUpdateDocumentRequest =
  BatchUpdateDocumentRequest'
    { _bRequests :: !(Maybe [Request'])
    , _bWriteControl :: !(Maybe WriteControl)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateDocumentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bRequests'
--
-- * 'bWriteControl'
batchUpdateDocumentRequest
    :: BatchUpdateDocumentRequest
batchUpdateDocumentRequest =
  BatchUpdateDocumentRequest' {_bRequests = Nothing, _bWriteControl = Nothing}


-- | A list of updates to apply to the document.
bRequests :: Lens' BatchUpdateDocumentRequest [Request']
bRequests
  = lens _bRequests (\ s a -> s{_bRequests = a}) .
      _Default
      . _Coerce

-- | Provides control over how write requests are executed.
bWriteControl :: Lens' BatchUpdateDocumentRequest (Maybe WriteControl)
bWriteControl
  = lens _bWriteControl
      (\ s a -> s{_bWriteControl = a})

instance FromJSON BatchUpdateDocumentRequest where
        parseJSON
          = withObject "BatchUpdateDocumentRequest"
              (\ o ->
                 BatchUpdateDocumentRequest' <$>
                   (o .:? "requests" .!= mempty) <*>
                     (o .:? "writeControl"))

instance ToJSON BatchUpdateDocumentRequest where
        toJSON BatchUpdateDocumentRequest'{..}
          = object
              (catMaybes
                 [("requests" .=) <$> _bRequests,
                  ("writeControl" .=) <$> _bWriteControl])

-- | The properties of a list which describe the look and feel of bullets
-- belonging to paragraphs associated with a list.
--
-- /See:/ 'listProperties' smart constructor.
newtype ListProperties =
  ListProperties'
    { _lpNestingLevels :: Maybe [NestingLevel]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpNestingLevels'
listProperties
    :: ListProperties
listProperties = ListProperties' {_lpNestingLevels = Nothing}


-- | Describes the properties of the bullets at the associated level. A list
-- has at most nine levels of nesting with nesting level 0 corresponding to
-- the top-most level and nesting level 8 corresponding to the most nested
-- level. The nesting levels are returned in ascending order with the least
-- nested returned first.
lpNestingLevels :: Lens' ListProperties [NestingLevel]
lpNestingLevels
  = lens _lpNestingLevels
      (\ s a -> s{_lpNestingLevels = a})
      . _Default
      . _Coerce

instance FromJSON ListProperties where
        parseJSON
          = withObject "ListProperties"
              (\ o ->
                 ListProperties' <$>
                   (o .:? "nestingLevels" .!= mempty))

instance ToJSON ListProperties where
        toJSON ListProperties'{..}
          = object
              (catMaybes
                 [("nestingLevels" .=) <$> _lpNestingLevels])

-- | Inserts text at the specified location.
--
-- /See:/ 'insertTextRequest' smart constructor.
data InsertTextRequest =
  InsertTextRequest'
    { _iLocation :: !(Maybe Location)
    , _iText :: !(Maybe Text)
    , _iEndOfSegmentLocation :: !(Maybe EndOfSegmentLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InsertTextRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iLocation'
--
-- * 'iText'
--
-- * 'iEndOfSegmentLocation'
insertTextRequest
    :: InsertTextRequest
insertTextRequest =
  InsertTextRequest'
    {_iLocation = Nothing, _iText = Nothing, _iEndOfSegmentLocation = Nothing}


-- | Inserts the text at a specific index in the document. Text must be
-- inserted inside the bounds of an existing Paragraph. For instance, text
-- cannot be inserted at a table\'s start index (i.e. between the table and
-- its preceding paragraph). The text must be inserted in the preceding
-- paragraph.
iLocation :: Lens' InsertTextRequest (Maybe Location)
iLocation
  = lens _iLocation (\ s a -> s{_iLocation = a})

-- | The text to be inserted. Inserting a newline character will implicitly
-- create a new Paragraph at that index. The paragraph style of the new
-- paragraph will be copied from the paragraph at the current insertion
-- index, including lists and bullets. Text styles for inserted text will
-- be determined automatically, generally preserving the styling of
-- neighboring text. In most cases, the text style for the inserted text
-- will match the text immediately before the insertion index. Some control
-- characters (U+0000-U+0008, U+000C-U+001F) and characters from the
-- Unicode Basic Multilingual Plane Private Use Area (U+E000-U+F8FF) will
-- be stripped out of the inserted text.
iText :: Lens' InsertTextRequest (Maybe Text)
iText = lens _iText (\ s a -> s{_iText = a})

-- | Inserts the text at the end of a header, footer, footnote or the
-- document body.
iEndOfSegmentLocation :: Lens' InsertTextRequest (Maybe EndOfSegmentLocation)
iEndOfSegmentLocation
  = lens _iEndOfSegmentLocation
      (\ s a -> s{_iEndOfSegmentLocation = a})

instance FromJSON InsertTextRequest where
        parseJSON
          = withObject "InsertTextRequest"
              (\ o ->
                 InsertTextRequest' <$>
                   (o .:? "location") <*> (o .:? "text") <*>
                     (o .:? "endOfSegmentLocation"))

instance ToJSON InsertTextRequest where
        toJSON InsertTextRequest'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _iLocation,
                  ("text" .=) <$> _iText,
                  ("endOfSegmentLocation" .=) <$>
                    _iEndOfSegmentLocation])

-- | The suggested text style changes to this ColumnBreak, keyed by
-- suggestion ID.
--
-- /See:/ 'columnBreakSuggestedTextStyleChanges' smart constructor.
newtype ColumnBreakSuggestedTextStyleChanges =
  ColumnBreakSuggestedTextStyleChanges'
    { _cbstscAddtional :: HashMap Text SuggestedTextStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ColumnBreakSuggestedTextStyleChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbstscAddtional'
columnBreakSuggestedTextStyleChanges
    :: HashMap Text SuggestedTextStyle -- ^ 'cbstscAddtional'
    -> ColumnBreakSuggestedTextStyleChanges
columnBreakSuggestedTextStyleChanges pCbstscAddtional_ =
  ColumnBreakSuggestedTextStyleChanges'
    {_cbstscAddtional = _Coerce # pCbstscAddtional_}


cbstscAddtional :: Lens' ColumnBreakSuggestedTextStyleChanges (HashMap Text SuggestedTextStyle)
cbstscAddtional
  = lens _cbstscAddtional
      (\ s a -> s{_cbstscAddtional = a})
      . _Coerce

instance FromJSON
           ColumnBreakSuggestedTextStyleChanges
         where
        parseJSON
          = withObject "ColumnBreakSuggestedTextStyleChanges"
              (\ o ->
                 ColumnBreakSuggestedTextStyleChanges' <$>
                   (parseJSONObject o))

instance ToJSON ColumnBreakSuggestedTextStyleChanges
         where
        toJSON = toJSON . _cbstscAddtional

-- | The suggested text style changes to this FootnoteReference, keyed by
-- suggestion ID.
--
-- /See:/ 'footNoteReferenceSuggestedTextStyleChanges' smart constructor.
newtype FootNoteReferenceSuggestedTextStyleChanges =
  FootNoteReferenceSuggestedTextStyleChanges'
    { _fnrstscAddtional :: HashMap Text SuggestedTextStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FootNoteReferenceSuggestedTextStyleChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fnrstscAddtional'
footNoteReferenceSuggestedTextStyleChanges
    :: HashMap Text SuggestedTextStyle -- ^ 'fnrstscAddtional'
    -> FootNoteReferenceSuggestedTextStyleChanges
footNoteReferenceSuggestedTextStyleChanges pFnrstscAddtional_ =
  FootNoteReferenceSuggestedTextStyleChanges'
    {_fnrstscAddtional = _Coerce # pFnrstscAddtional_}


fnrstscAddtional :: Lens' FootNoteReferenceSuggestedTextStyleChanges (HashMap Text SuggestedTextStyle)
fnrstscAddtional
  = lens _fnrstscAddtional
      (\ s a -> s{_fnrstscAddtional = a})
      . _Coerce

instance FromJSON
           FootNoteReferenceSuggestedTextStyleChanges
         where
        parseJSON
          = withObject
              "FootNoteReferenceSuggestedTextStyleChanges"
              (\ o ->
                 FootNoteReferenceSuggestedTextStyleChanges' <$>
                   (parseJSONObject o))

instance ToJSON
           FootNoteReferenceSuggestedTextStyleChanges
         where
        toJSON = toJSON . _fnrstscAddtional

-- | Output only. The headers in the document, keyed by header ID.
--
-- /See:/ 'documentHeaders' smart constructor.
newtype DocumentHeaders =
  DocumentHeaders'
    { _dhAddtional :: HashMap Text Header
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhAddtional'
documentHeaders
    :: HashMap Text Header -- ^ 'dhAddtional'
    -> DocumentHeaders
documentHeaders pDhAddtional_ =
  DocumentHeaders' {_dhAddtional = _Coerce # pDhAddtional_}


dhAddtional :: Lens' DocumentHeaders (HashMap Text Header)
dhAddtional
  = lens _dhAddtional (\ s a -> s{_dhAddtional = a}) .
      _Coerce

instance FromJSON DocumentHeaders where
        parseJSON
          = withObject "DocumentHeaders"
              (\ o -> DocumentHeaders' <$> (parseJSONObject o))

instance ToJSON DocumentHeaders where
        toJSON = toJSON . _dhAddtional

-- | Styles that apply to a table row.
--
-- /See:/ 'tableRowStyle' smart constructor.
newtype TableRowStyle =
  TableRowStyle'
    { _trsMinRowHeight :: Maybe Dimension
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableRowStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trsMinRowHeight'
tableRowStyle
    :: TableRowStyle
tableRowStyle = TableRowStyle' {_trsMinRowHeight = Nothing}


-- | The minimum height of the row. The row will be rendered in the Docs
-- editor at a height equal to or greater than this value in order to show
-- all the content in the row\'s cells.
trsMinRowHeight :: Lens' TableRowStyle (Maybe Dimension)
trsMinRowHeight
  = lens _trsMinRowHeight
      (\ s a -> s{_trsMinRowHeight = a})

instance FromJSON TableRowStyle where
        parseJSON
          = withObject "TableRowStyle"
              (\ o -> TableRowStyle' <$> (o .:? "minRowHeight"))

instance ToJSON TableRowStyle where
        toJSON TableRowStyle'{..}
          = object
              (catMaybes
                 [("minRowHeight" .=) <$> _trsMinRowHeight])

-- | A StructuralElement representing a section break. A section is a range
-- of content which has the same SectionStyle. A section break represents
-- the start of a new section, and the section style applies to the section
-- after the section break. The document body always begins with a section
-- break.
--
-- /See:/ 'sectionBreak' smart constructor.
data SectionBreak =
  SectionBreak'
    { _sbSuggestedInsertionIds :: !(Maybe [Text])
    , _sbSuggestedDeletionIds :: !(Maybe [Text])
    , _sbSectionStyle :: !(Maybe SectionStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SectionBreak' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbSuggestedInsertionIds'
--
-- * 'sbSuggestedDeletionIds'
--
-- * 'sbSectionStyle'
sectionBreak
    :: SectionBreak
sectionBreak =
  SectionBreak'
    { _sbSuggestedInsertionIds = Nothing
    , _sbSuggestedDeletionIds = Nothing
    , _sbSectionStyle = Nothing
    }


-- | The suggested insertion IDs. A SectionBreak may have multiple insertion
-- IDs if it is a nested suggested change. If empty, then this is not a
-- suggested insertion.
sbSuggestedInsertionIds :: Lens' SectionBreak [Text]
sbSuggestedInsertionIds
  = lens _sbSuggestedInsertionIds
      (\ s a -> s{_sbSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
sbSuggestedDeletionIds :: Lens' SectionBreak [Text]
sbSuggestedDeletionIds
  = lens _sbSuggestedDeletionIds
      (\ s a -> s{_sbSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | The style of the section after this section break.
sbSectionStyle :: Lens' SectionBreak (Maybe SectionStyle)
sbSectionStyle
  = lens _sbSectionStyle
      (\ s a -> s{_sbSectionStyle = a})

instance FromJSON SectionBreak where
        parseJSON
          = withObject "SectionBreak"
              (\ o ->
                 SectionBreak' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "sectionStyle"))

instance ToJSON SectionBreak where
        toJSON SectionBreak'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _sbSuggestedInsertionIds,
                  ("suggestedDeletionIds" .=) <$>
                    _sbSuggestedDeletionIds,
                  ("sectionStyle" .=) <$> _sbSectionStyle])

-- | A StructuralElement representing a table.
--
-- /See:/ 'table' smart constructor.
data Table =
  Table'
    { _tabSuggestedInsertionIds :: !(Maybe [Text])
    , _tabTableRows :: !(Maybe [TableRow])
    , _tabRows :: !(Maybe (Textual Int32))
    , _tabTableStyle :: !(Maybe TableStyle)
    , _tabSuggestedDeletionIds :: !(Maybe [Text])
    , _tabColumns :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Table' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tabSuggestedInsertionIds'
--
-- * 'tabTableRows'
--
-- * 'tabRows'
--
-- * 'tabTableStyle'
--
-- * 'tabSuggestedDeletionIds'
--
-- * 'tabColumns'
table
    :: Table
table =
  Table'
    { _tabSuggestedInsertionIds = Nothing
    , _tabTableRows = Nothing
    , _tabRows = Nothing
    , _tabTableStyle = Nothing
    , _tabSuggestedDeletionIds = Nothing
    , _tabColumns = Nothing
    }


-- | The suggested insertion IDs. A Table may have multiple insertion IDs if
-- it is a nested suggested change. If empty, then this is not a suggested
-- insertion.
tabSuggestedInsertionIds :: Lens' Table [Text]
tabSuggestedInsertionIds
  = lens _tabSuggestedInsertionIds
      (\ s a -> s{_tabSuggestedInsertionIds = a})
      . _Default
      . _Coerce

-- | The contents and style of each row.
tabTableRows :: Lens' Table [TableRow]
tabTableRows
  = lens _tabTableRows (\ s a -> s{_tabTableRows = a})
      . _Default
      . _Coerce

-- | Number of rows in the table.
tabRows :: Lens' Table (Maybe Int32)
tabRows
  = lens _tabRows (\ s a -> s{_tabRows = a}) .
      mapping _Coerce

-- | The style of the table.
tabTableStyle :: Lens' Table (Maybe TableStyle)
tabTableStyle
  = lens _tabTableStyle
      (\ s a -> s{_tabTableStyle = a})

-- | The suggested deletion IDs. If empty, then there are no suggested
-- deletions of this content.
tabSuggestedDeletionIds :: Lens' Table [Text]
tabSuggestedDeletionIds
  = lens _tabSuggestedDeletionIds
      (\ s a -> s{_tabSuggestedDeletionIds = a})
      . _Default
      . _Coerce

-- | Number of columns in the table. It is possible for a table to be
-- non-rectangular, so some rows may have a different number of cells.
tabColumns :: Lens' Table (Maybe Int32)
tabColumns
  = lens _tabColumns (\ s a -> s{_tabColumns = a}) .
      mapping _Coerce

instance FromJSON Table where
        parseJSON
          = withObject "Table"
              (\ o ->
                 Table' <$>
                   (o .:? "suggestedInsertionIds" .!= mempty) <*>
                     (o .:? "tableRows" .!= mempty)
                     <*> (o .:? "rows")
                     <*> (o .:? "tableStyle")
                     <*> (o .:? "suggestedDeletionIds" .!= mempty)
                     <*> (o .:? "columns"))

instance ToJSON Table where
        toJSON Table'{..}
          = object
              (catMaybes
                 [("suggestedInsertionIds" .=) <$>
                    _tabSuggestedInsertionIds,
                  ("tableRows" .=) <$> _tabTableRows,
                  ("rows" .=) <$> _tabRows,
                  ("tableStyle" .=) <$> _tabTableStyle,
                  ("suggestedDeletionIds" .=) <$>
                    _tabSuggestedDeletionIds,
                  ("columns" .=) <$> _tabColumns])

-- | The styling that applies to a section.
--
-- /See:/ 'sectionStyle' smart constructor.
data SectionStyle =
  SectionStyle'
    { _ssMarginTop :: !(Maybe Dimension)
    , _ssDefaultFooterId :: !(Maybe Text)
    , _ssFirstPageHeaderId :: !(Maybe Text)
    , _ssMarginFooter :: !(Maybe Dimension)
    , _ssMarginHeader :: !(Maybe Dimension)
    , _ssFirstPageFooterId :: !(Maybe Text)
    , _ssSectionType :: !(Maybe SectionStyleSectionType)
    , _ssDefaultHeaderId :: !(Maybe Text)
    , _ssColumnSeparatorStyle :: !(Maybe SectionStyleColumnSeparatorStyle)
    , _ssContentDirection :: !(Maybe SectionStyleContentDirection)
    , _ssColumnProperties :: !(Maybe [SectionColumnProperties])
    , _ssMarginLeft :: !(Maybe Dimension)
    , _ssPageNumberStart :: !(Maybe (Textual Int32))
    , _ssUseFirstPageHeaderFooter :: !(Maybe Bool)
    , _ssEvenPageFooterId :: !(Maybe Text)
    , _ssMarginRight :: !(Maybe Dimension)
    , _ssMarginBottom :: !(Maybe Dimension)
    , _ssEvenPageHeaderId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SectionStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssMarginTop'
--
-- * 'ssDefaultFooterId'
--
-- * 'ssFirstPageHeaderId'
--
-- * 'ssMarginFooter'
--
-- * 'ssMarginHeader'
--
-- * 'ssFirstPageFooterId'
--
-- * 'ssSectionType'
--
-- * 'ssDefaultHeaderId'
--
-- * 'ssColumnSeparatorStyle'
--
-- * 'ssContentDirection'
--
-- * 'ssColumnProperties'
--
-- * 'ssMarginLeft'
--
-- * 'ssPageNumberStart'
--
-- * 'ssUseFirstPageHeaderFooter'
--
-- * 'ssEvenPageFooterId'
--
-- * 'ssMarginRight'
--
-- * 'ssMarginBottom'
--
-- * 'ssEvenPageHeaderId'
sectionStyle
    :: SectionStyle
sectionStyle =
  SectionStyle'
    { _ssMarginTop = Nothing
    , _ssDefaultFooterId = Nothing
    , _ssFirstPageHeaderId = Nothing
    , _ssMarginFooter = Nothing
    , _ssMarginHeader = Nothing
    , _ssFirstPageFooterId = Nothing
    , _ssSectionType = Nothing
    , _ssDefaultHeaderId = Nothing
    , _ssColumnSeparatorStyle = Nothing
    , _ssContentDirection = Nothing
    , _ssColumnProperties = Nothing
    , _ssMarginLeft = Nothing
    , _ssPageNumberStart = Nothing
    , _ssUseFirstPageHeaderFooter = Nothing
    , _ssEvenPageFooterId = Nothing
    , _ssMarginRight = Nothing
    , _ssMarginBottom = Nothing
    , _ssEvenPageHeaderId = Nothing
    }


-- | The top page margin of the section. If unset, uses margin_top from
-- DocumentStyle. When updating this property, setting a concrete value is
-- required. Unsetting this property results in a 400 bad request error.
ssMarginTop :: Lens' SectionStyle (Maybe Dimension)
ssMarginTop
  = lens _ssMarginTop (\ s a -> s{_ssMarginTop = a})

-- | The ID of the default footer. If unset, the value inherits from the
-- previous SectionBreak\'s SectionStyle. If the value is unset in the
-- first SectionBreak, it inherits from DocumentStyle\'s default_footer_id.
-- This property is read-only.
ssDefaultFooterId :: Lens' SectionStyle (Maybe Text)
ssDefaultFooterId
  = lens _ssDefaultFooterId
      (\ s a -> s{_ssDefaultFooterId = a})

-- | The ID of the header used only for the first page of the section. If
-- use_first_page_header_footer is true, this value is used for the header
-- on the first page of the section. If it is false, the header on the
-- first page of the section uses the default_header_id. If unset, the
-- value inherits from the previous SectionBreak\'s SectionStyle. If the
-- value is unset in the first SectionBreak, it inherits from
-- DocumentStyle\'s first_page_header_id. This property is read-only.
ssFirstPageHeaderId :: Lens' SectionStyle (Maybe Text)
ssFirstPageHeaderId
  = lens _ssFirstPageHeaderId
      (\ s a -> s{_ssFirstPageHeaderId = a})

-- | The footer margin of the section. If unset, uses margin_footer from
-- DocumentStyle. If updated, use_custom_header_footer_margins is set to
-- true on DocumentStyle. The value of use_custom_header_footer_margins on
-- DocumentStyle indicates if a footer margin is being respected for this
-- section When updating this property, setting a concrete value is
-- required. Unsetting this property results in a 400 bad request error.
ssMarginFooter :: Lens' SectionStyle (Maybe Dimension)
ssMarginFooter
  = lens _ssMarginFooter
      (\ s a -> s{_ssMarginFooter = a})

-- | The header margin of the section. If unset, uses margin_header from
-- DocumentStyle. If updated, use_custom_header_footer_margins is set to
-- true on DocumentStyle. The value of use_custom_header_footer_margins on
-- DocumentStyle indicates if a header margin is being respected for this
-- section. When updating this property, setting a concrete value is
-- required. Unsetting this property results in a 400 bad request error.
ssMarginHeader :: Lens' SectionStyle (Maybe Dimension)
ssMarginHeader
  = lens _ssMarginHeader
      (\ s a -> s{_ssMarginHeader = a})

-- | The ID of the footer used only for the first page of the section. If
-- use_first_page_header_footer is true, this value is used for the footer
-- on the first page of the section. If it is false, the footer on the
-- first page of the section uses the default_footer_id. If unset, the
-- value inherits from the previous SectionBreak\'s SectionStyle. If the
-- value is unset in the first SectionBreak, it inherits from
-- DocumentStyle\'s first_page_footer_id. This property is read-only.
ssFirstPageFooterId :: Lens' SectionStyle (Maybe Text)
ssFirstPageFooterId
  = lens _ssFirstPageFooterId
      (\ s a -> s{_ssFirstPageFooterId = a})

-- | Output only. The type of section.
ssSectionType :: Lens' SectionStyle (Maybe SectionStyleSectionType)
ssSectionType
  = lens _ssSectionType
      (\ s a -> s{_ssSectionType = a})

-- | The ID of the default header. If unset, the value inherits from the
-- previous SectionBreak\'s SectionStyle. If the value is unset in the
-- first SectionBreak, it inherits from DocumentStyle\'s default_header_id.
-- This property is read-only.
ssDefaultHeaderId :: Lens' SectionStyle (Maybe Text)
ssDefaultHeaderId
  = lens _ssDefaultHeaderId
      (\ s a -> s{_ssDefaultHeaderId = a})

-- | The style of column separators. This style can be set even when there is
-- one column in the section. When updating this property, setting a
-- concrete value is required. Unsetting this property results in a 400 bad
-- request error.
ssColumnSeparatorStyle :: Lens' SectionStyle (Maybe SectionStyleColumnSeparatorStyle)
ssColumnSeparatorStyle
  = lens _ssColumnSeparatorStyle
      (\ s a -> s{_ssColumnSeparatorStyle = a})

-- | The content direction of this section. If unset, the value defaults to
-- LEFT_TO_RIGHT. When updating this property, setting a concrete value is
-- required. Unsetting this property results in a 400 bad request error.
ssContentDirection :: Lens' SectionStyle (Maybe SectionStyleContentDirection)
ssContentDirection
  = lens _ssContentDirection
      (\ s a -> s{_ssContentDirection = a})

-- | The section\'s columns properties. If empty, the section contains one
-- column with the default properties in the Docs editor. A section can be
-- updated to have no more than three columns. When updating this property,
-- setting a concrete value is required. Unsetting this property will
-- result in a 400 bad request error.
ssColumnProperties :: Lens' SectionStyle [SectionColumnProperties]
ssColumnProperties
  = lens _ssColumnProperties
      (\ s a -> s{_ssColumnProperties = a})
      . _Default
      . _Coerce

-- | The left page margin of the section. If unset, uses margin_left from
-- DocumentStyle. Updating left margin causes columns in this section to
-- resize. Since the margin affects column width, it is applied before
-- column properties. When updating this property, setting a concrete value
-- is required. Unsetting this property results in a 400 bad request error.
ssMarginLeft :: Lens' SectionStyle (Maybe Dimension)
ssMarginLeft
  = lens _ssMarginLeft (\ s a -> s{_ssMarginLeft = a})

-- | The page number from which to start counting the number of pages for
-- this section. If unset, page numbering continues from the previous
-- section. If the value is unset in the first SectionBreak, refer to
-- DocumentStyle\'s page_number_start. When updating this property, setting
-- a concrete value is required. Unsetting this property results in a 400
-- bad request error.
ssPageNumberStart :: Lens' SectionStyle (Maybe Int32)
ssPageNumberStart
  = lens _ssPageNumberStart
      (\ s a -> s{_ssPageNumberStart = a})
      . mapping _Coerce

-- | Indicates whether to use the first page header \/ footer IDs for the
-- first page of the section. If unset, it inherits from DocumentStyle\'s
-- use_first_page_header_footer for the first section. If the value is
-- unset for subsequent sectors, it should be interpreted as false. When
-- updating this property, setting a concrete value is required. Unsetting
-- this property results in a 400 bad request error.
ssUseFirstPageHeaderFooter :: Lens' SectionStyle (Maybe Bool)
ssUseFirstPageHeaderFooter
  = lens _ssUseFirstPageHeaderFooter
      (\ s a -> s{_ssUseFirstPageHeaderFooter = a})

-- | The ID of the footer used only for even pages. If the value of
-- DocumentStyle\'s use_even_page_header_footer is true, this value is used
-- for the footers on even pages in the section. If it is false, the
-- footers on even pages uses the default_footer_id. If unset, the value
-- inherits from the previous SectionBreak\'s SectionStyle. If the value is
-- unset in the first SectionBreak, it inherits from DocumentStyle\'s
-- even_page_footer_id. This property is read-only.
ssEvenPageFooterId :: Lens' SectionStyle (Maybe Text)
ssEvenPageFooterId
  = lens _ssEvenPageFooterId
      (\ s a -> s{_ssEvenPageFooterId = a})

-- | The right page margin of the section. If unset, uses margin_right from
-- DocumentStyle. Updating right margin causes columns in this section to
-- resize. Since the margin affects column width, it is applied before
-- column properties. When updating this property, setting a concrete value
-- is required. Unsetting this property results in a 400 bad request error.
ssMarginRight :: Lens' SectionStyle (Maybe Dimension)
ssMarginRight
  = lens _ssMarginRight
      (\ s a -> s{_ssMarginRight = a})

-- | The bottom page margin of the section. If unset, uses margin_bottom from
-- DocumentStyle. When updating this property, setting a concrete value is
-- required. Unsetting this property results in a 400 bad request error.
ssMarginBottom :: Lens' SectionStyle (Maybe Dimension)
ssMarginBottom
  = lens _ssMarginBottom
      (\ s a -> s{_ssMarginBottom = a})

-- | The ID of the header used only for even pages. If the value of
-- DocumentStyle\'s use_even_page_header_footer is true, this value is used
-- for the headers on even pages in the section. If it is false, the
-- headers on even pages uses the default_header_id. If unset, the value
-- inherits from the previous SectionBreak\'s SectionStyle. If the value is
-- unset in the first SectionBreak, it inherits from DocumentStyle\'s
-- even_page_header_id. This property is read-only.
ssEvenPageHeaderId :: Lens' SectionStyle (Maybe Text)
ssEvenPageHeaderId
  = lens _ssEvenPageHeaderId
      (\ s a -> s{_ssEvenPageHeaderId = a})

instance FromJSON SectionStyle where
        parseJSON
          = withObject "SectionStyle"
              (\ o ->
                 SectionStyle' <$>
                   (o .:? "marginTop") <*> (o .:? "defaultFooterId") <*>
                     (o .:? "firstPageHeaderId")
                     <*> (o .:? "marginFooter")
                     <*> (o .:? "marginHeader")
                     <*> (o .:? "firstPageFooterId")
                     <*> (o .:? "sectionType")
                     <*> (o .:? "defaultHeaderId")
                     <*> (o .:? "columnSeparatorStyle")
                     <*> (o .:? "contentDirection")
                     <*> (o .:? "columnProperties" .!= mempty)
                     <*> (o .:? "marginLeft")
                     <*> (o .:? "pageNumberStart")
                     <*> (o .:? "useFirstPageHeaderFooter")
                     <*> (o .:? "evenPageFooterId")
                     <*> (o .:? "marginRight")
                     <*> (o .:? "marginBottom")
                     <*> (o .:? "evenPageHeaderId"))

instance ToJSON SectionStyle where
        toJSON SectionStyle'{..}
          = object
              (catMaybes
                 [("marginTop" .=) <$> _ssMarginTop,
                  ("defaultFooterId" .=) <$> _ssDefaultFooterId,
                  ("firstPageHeaderId" .=) <$> _ssFirstPageHeaderId,
                  ("marginFooter" .=) <$> _ssMarginFooter,
                  ("marginHeader" .=) <$> _ssMarginHeader,
                  ("firstPageFooterId" .=) <$> _ssFirstPageFooterId,
                  ("sectionType" .=) <$> _ssSectionType,
                  ("defaultHeaderId" .=) <$> _ssDefaultHeaderId,
                  ("columnSeparatorStyle" .=) <$>
                    _ssColumnSeparatorStyle,
                  ("contentDirection" .=) <$> _ssContentDirection,
                  ("columnProperties" .=) <$> _ssColumnProperties,
                  ("marginLeft" .=) <$> _ssMarginLeft,
                  ("pageNumberStart" .=) <$> _ssPageNumberStart,
                  ("useFirstPageHeaderFooter" .=) <$>
                    _ssUseFirstPageHeaderFooter,
                  ("evenPageFooterId" .=) <$> _ssEvenPageFooterId,
                  ("marginRight" .=) <$> _ssMarginRight,
                  ("marginBottom" .=) <$> _ssMarginBottom,
                  ("evenPageHeaderId" .=) <$> _ssEvenPageHeaderId])

-- | Represents the background of a document.
--
-- /See:/ 'backgRound' smart constructor.
newtype BackgRound =
  BackgRound'
    { _brColor :: Maybe OptionalColor
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackgRound' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brColor'
backgRound
    :: BackgRound
backgRound = BackgRound' {_brColor = Nothing}


-- | The background color.
brColor :: Lens' BackgRound (Maybe OptionalColor)
brColor = lens _brColor (\ s a -> s{_brColor = a})

instance FromJSON BackgRound where
        parseJSON
          = withObject "BackgRound"
              (\ o -> BackgRound' <$> (o .:? "color"))

instance ToJSON BackgRound where
        toJSON BackgRound'{..}
          = object (catMaybes [("color" .=) <$> _brColor])

-- | A suggested change to ListProperties.
--
-- /See:/ 'suggestedListProperties' smart constructor.
data SuggestedListProperties =
  SuggestedListProperties'
    { _slpListPropertiesSuggestionState :: !(Maybe ListPropertiesSuggestionState)
    , _slpListProperties :: !(Maybe ListProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestedListProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slpListPropertiesSuggestionState'
--
-- * 'slpListProperties'
suggestedListProperties
    :: SuggestedListProperties
suggestedListProperties =
  SuggestedListProperties'
    {_slpListPropertiesSuggestionState = Nothing, _slpListProperties = Nothing}


-- | A mask that indicates which of the fields on the base ListProperties
-- have been changed in this suggestion.
slpListPropertiesSuggestionState :: Lens' SuggestedListProperties (Maybe ListPropertiesSuggestionState)
slpListPropertiesSuggestionState
  = lens _slpListPropertiesSuggestionState
      (\ s a -> s{_slpListPropertiesSuggestionState = a})

-- | A ListProperties that only includes the changes made in this suggestion.
-- This can be used along with the list_properties_suggestion_state to see
-- which fields have changed and their new values.
slpListProperties :: Lens' SuggestedListProperties (Maybe ListProperties)
slpListProperties
  = lens _slpListProperties
      (\ s a -> s{_slpListProperties = a})

instance FromJSON SuggestedListProperties where
        parseJSON
          = withObject "SuggestedListProperties"
              (\ o ->
                 SuggestedListProperties' <$>
                   (o .:? "listPropertiesSuggestionState") <*>
                     (o .:? "listProperties"))

instance ToJSON SuggestedListProperties where
        toJSON SuggestedListProperties'{..}
          = object
              (catMaybes
                 [("listPropertiesSuggestionState" .=) <$>
                    _slpListPropertiesSuggestionState,
                  ("listProperties" .=) <$> _slpListProperties])

-- | Properties that apply to a section\'s column.
--
-- /See:/ 'sectionColumnProperties' smart constructor.
data SectionColumnProperties =
  SectionColumnProperties'
    { _scpWidth :: !(Maybe Dimension)
    , _scpPaddingEnd :: !(Maybe Dimension)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SectionColumnProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scpWidth'
--
-- * 'scpPaddingEnd'
sectionColumnProperties
    :: SectionColumnProperties
sectionColumnProperties =
  SectionColumnProperties' {_scpWidth = Nothing, _scpPaddingEnd = Nothing}


-- | Output only. The width of the column.
scpWidth :: Lens' SectionColumnProperties (Maybe Dimension)
scpWidth = lens _scpWidth (\ s a -> s{_scpWidth = a})

-- | The padding at the end of the column.
scpPaddingEnd :: Lens' SectionColumnProperties (Maybe Dimension)
scpPaddingEnd
  = lens _scpPaddingEnd
      (\ s a -> s{_scpPaddingEnd = a})

instance FromJSON SectionColumnProperties where
        parseJSON
          = withObject "SectionColumnProperties"
              (\ o ->
                 SectionColumnProperties' <$>
                   (o .:? "width") <*> (o .:? "paddingEnd"))

instance ToJSON SectionColumnProperties where
        toJSON SectionColumnProperties'{..}
          = object
              (catMaybes
                 [("width" .=) <$> _scpWidth,
                  ("paddingEnd" .=) <$> _scpPaddingEnd])

-- | Creates bullets for all of the paragraphs that overlap with the given
-- range. The nesting level of each paragraph will be determined by
-- counting leading tabs in front of each paragraph. To avoid excess space
-- between the bullet and the corresponding paragraph, these leading tabs
-- are removed by this request. This may change the indices of parts of the
-- text. If the paragraph immediately before paragraphs being updated is in
-- a list with a matching preset, the paragraphs being updated are added to
-- that preceding list.
--
-- /See:/ 'createParagraphBulletsRequest' smart constructor.
data CreateParagraphBulletsRequest =
  CreateParagraphBulletsRequest'
    { _cpbrBulletPreset :: !(Maybe CreateParagraphBulletsRequestBulletPreset)
    , _cpbrRange :: !(Maybe Range)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateParagraphBulletsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpbrBulletPreset'
--
-- * 'cpbrRange'
createParagraphBulletsRequest
    :: CreateParagraphBulletsRequest
createParagraphBulletsRequest =
  CreateParagraphBulletsRequest'
    {_cpbrBulletPreset = Nothing, _cpbrRange = Nothing}


-- | The kinds of bullet glyphs to be used.
cpbrBulletPreset :: Lens' CreateParagraphBulletsRequest (Maybe CreateParagraphBulletsRequestBulletPreset)
cpbrBulletPreset
  = lens _cpbrBulletPreset
      (\ s a -> s{_cpbrBulletPreset = a})

-- | The range to apply the bullet preset to.
cpbrRange :: Lens' CreateParagraphBulletsRequest (Maybe Range)
cpbrRange
  = lens _cpbrRange (\ s a -> s{_cpbrRange = a})

instance FromJSON CreateParagraphBulletsRequest where
        parseJSON
          = withObject "CreateParagraphBulletsRequest"
              (\ o ->
                 CreateParagraphBulletsRequest' <$>
                   (o .:? "bulletPreset") <*> (o .:? "range"))

instance ToJSON CreateParagraphBulletsRequest where
        toJSON CreateParagraphBulletsRequest'{..}
          = object
              (catMaybes
                 [("bulletPreset" .=) <$> _cpbrBulletPreset,
                  ("range" .=) <$> _cpbrRange])

-- | Output only. The footers in the document, keyed by footer ID.
--
-- /See:/ 'documentFooters' smart constructor.
newtype DocumentFooters =
  DocumentFooters'
    { _dfAddtional :: HashMap Text Footer
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentFooters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfAddtional'
documentFooters
    :: HashMap Text Footer -- ^ 'dfAddtional'
    -> DocumentFooters
documentFooters pDfAddtional_ =
  DocumentFooters' {_dfAddtional = _Coerce # pDfAddtional_}


dfAddtional :: Lens' DocumentFooters (HashMap Text Footer)
dfAddtional
  = lens _dfAddtional (\ s a -> s{_dfAddtional = a}) .
      _Coerce

instance FromJSON DocumentFooters where
        parseJSON
          = withObject "DocumentFooters"
              (\ o -> DocumentFooters' <$> (parseJSONObject o))

instance ToJSON DocumentFooters where
        toJSON = toJSON . _dfAddtional

-- | Creates a NamedRange referencing the given range.
--
-- /See:/ 'createNamedRangeRequest' smart constructor.
data CreateNamedRangeRequest =
  CreateNamedRangeRequest'
    { _cnrrName :: !(Maybe Text)
    , _cnrrRange :: !(Maybe Range)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateNamedRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnrrName'
--
-- * 'cnrrRange'
createNamedRangeRequest
    :: CreateNamedRangeRequest
createNamedRangeRequest =
  CreateNamedRangeRequest' {_cnrrName = Nothing, _cnrrRange = Nothing}


-- | The name of the NamedRange. Names do not need to be unique. Names must
-- be at least 1 character and no more than 256 characters, measured in
-- UTF-16 code units.
cnrrName :: Lens' CreateNamedRangeRequest (Maybe Text)
cnrrName = lens _cnrrName (\ s a -> s{_cnrrName = a})

-- | The range to apply the name to.
cnrrRange :: Lens' CreateNamedRangeRequest (Maybe Range)
cnrrRange
  = lens _cnrrRange (\ s a -> s{_cnrrRange = a})

instance FromJSON CreateNamedRangeRequest where
        parseJSON
          = withObject "CreateNamedRangeRequest"
              (\ o ->
                 CreateNamedRangeRequest' <$>
                   (o .:? "name") <*> (o .:? "range"))

instance ToJSON CreateNamedRangeRequest where
        toJSON CreateNamedRangeRequest'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _cnrrName,
                  ("range" .=) <$> _cnrrRange])

-- | A mask that indicates which of the fields on the base TextStyle have
-- been changed in this suggestion. For any field set to true, there is a
-- new suggested value.
--
-- /See:/ 'textStyleSuggestionState' smart constructor.
data TextStyleSuggestionState =
  TextStyleSuggestionState'
    { _tsssItalicSuggested :: !(Maybe Bool)
    , _tsssUnderlineSuggested :: !(Maybe Bool)
    , _tsssFontSizeSuggested :: !(Maybe Bool)
    , _tsssSmallCapsSuggested :: !(Maybe Bool)
    , _tsssForegRoundColorSuggested :: !(Maybe Bool)
    , _tsssBaselineOffSetSuggested :: !(Maybe Bool)
    , _tsssWeightedFontFamilySuggested :: !(Maybe Bool)
    , _tsssStrikethroughSuggested :: !(Maybe Bool)
    , _tsssLinkSuggested :: !(Maybe Bool)
    , _tsssBoldSuggested :: !(Maybe Bool)
    , _tsssBackgRoundColorSuggested :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextStyleSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsssItalicSuggested'
--
-- * 'tsssUnderlineSuggested'
--
-- * 'tsssFontSizeSuggested'
--
-- * 'tsssSmallCapsSuggested'
--
-- * 'tsssForegRoundColorSuggested'
--
-- * 'tsssBaselineOffSetSuggested'
--
-- * 'tsssWeightedFontFamilySuggested'
--
-- * 'tsssStrikethroughSuggested'
--
-- * 'tsssLinkSuggested'
--
-- * 'tsssBoldSuggested'
--
-- * 'tsssBackgRoundColorSuggested'
textStyleSuggestionState
    :: TextStyleSuggestionState
textStyleSuggestionState =
  TextStyleSuggestionState'
    { _tsssItalicSuggested = Nothing
    , _tsssUnderlineSuggested = Nothing
    , _tsssFontSizeSuggested = Nothing
    , _tsssSmallCapsSuggested = Nothing
    , _tsssForegRoundColorSuggested = Nothing
    , _tsssBaselineOffSetSuggested = Nothing
    , _tsssWeightedFontFamilySuggested = Nothing
    , _tsssStrikethroughSuggested = Nothing
    , _tsssLinkSuggested = Nothing
    , _tsssBoldSuggested = Nothing
    , _tsssBackgRoundColorSuggested = Nothing
    }


-- | Indicates if there was a suggested change to italic.
tsssItalicSuggested :: Lens' TextStyleSuggestionState (Maybe Bool)
tsssItalicSuggested
  = lens _tsssItalicSuggested
      (\ s a -> s{_tsssItalicSuggested = a})

-- | Indicates if there was a suggested change to underline.
tsssUnderlineSuggested :: Lens' TextStyleSuggestionState (Maybe Bool)
tsssUnderlineSuggested
  = lens _tsssUnderlineSuggested
      (\ s a -> s{_tsssUnderlineSuggested = a})

-- | Indicates if there was a suggested change to font_size.
tsssFontSizeSuggested :: Lens' TextStyleSuggestionState (Maybe Bool)
tsssFontSizeSuggested
  = lens _tsssFontSizeSuggested
      (\ s a -> s{_tsssFontSizeSuggested = a})

-- | Indicates if there was a suggested change to small_caps.
tsssSmallCapsSuggested :: Lens' TextStyleSuggestionState (Maybe Bool)
tsssSmallCapsSuggested
  = lens _tsssSmallCapsSuggested
      (\ s a -> s{_tsssSmallCapsSuggested = a})

-- | Indicates if there was a suggested change to foreground_color.
tsssForegRoundColorSuggested :: Lens' TextStyleSuggestionState (Maybe Bool)
tsssForegRoundColorSuggested
  = lens _tsssForegRoundColorSuggested
      (\ s a -> s{_tsssForegRoundColorSuggested = a})

-- | Indicates if there was a suggested change to baseline_offset.
tsssBaselineOffSetSuggested :: Lens' TextStyleSuggestionState (Maybe Bool)
tsssBaselineOffSetSuggested
  = lens _tsssBaselineOffSetSuggested
      (\ s a -> s{_tsssBaselineOffSetSuggested = a})

-- | Indicates if there was a suggested change to weighted_font_family.
tsssWeightedFontFamilySuggested :: Lens' TextStyleSuggestionState (Maybe Bool)
tsssWeightedFontFamilySuggested
  = lens _tsssWeightedFontFamilySuggested
      (\ s a -> s{_tsssWeightedFontFamilySuggested = a})

-- | Indicates if there was a suggested change to strikethrough.
tsssStrikethroughSuggested :: Lens' TextStyleSuggestionState (Maybe Bool)
tsssStrikethroughSuggested
  = lens _tsssStrikethroughSuggested
      (\ s a -> s{_tsssStrikethroughSuggested = a})

-- | Indicates if there was a suggested change to link.
tsssLinkSuggested :: Lens' TextStyleSuggestionState (Maybe Bool)
tsssLinkSuggested
  = lens _tsssLinkSuggested
      (\ s a -> s{_tsssLinkSuggested = a})

-- | Indicates if there was a suggested change to bold.
tsssBoldSuggested :: Lens' TextStyleSuggestionState (Maybe Bool)
tsssBoldSuggested
  = lens _tsssBoldSuggested
      (\ s a -> s{_tsssBoldSuggested = a})

-- | Indicates if there was a suggested change to background_color.
tsssBackgRoundColorSuggested :: Lens' TextStyleSuggestionState (Maybe Bool)
tsssBackgRoundColorSuggested
  = lens _tsssBackgRoundColorSuggested
      (\ s a -> s{_tsssBackgRoundColorSuggested = a})

instance FromJSON TextStyleSuggestionState where
        parseJSON
          = withObject "TextStyleSuggestionState"
              (\ o ->
                 TextStyleSuggestionState' <$>
                   (o .:? "italicSuggested") <*>
                     (o .:? "underlineSuggested")
                     <*> (o .:? "fontSizeSuggested")
                     <*> (o .:? "smallCapsSuggested")
                     <*> (o .:? "foregroundColorSuggested")
                     <*> (o .:? "baselineOffsetSuggested")
                     <*> (o .:? "weightedFontFamilySuggested")
                     <*> (o .:? "strikethroughSuggested")
                     <*> (o .:? "linkSuggested")
                     <*> (o .:? "boldSuggested")
                     <*> (o .:? "backgroundColorSuggested"))

instance ToJSON TextStyleSuggestionState where
        toJSON TextStyleSuggestionState'{..}
          = object
              (catMaybes
                 [("italicSuggested" .=) <$> _tsssItalicSuggested,
                  ("underlineSuggested" .=) <$>
                    _tsssUnderlineSuggested,
                  ("fontSizeSuggested" .=) <$> _tsssFontSizeSuggested,
                  ("smallCapsSuggested" .=) <$>
                    _tsssSmallCapsSuggested,
                  ("foregroundColorSuggested" .=) <$>
                    _tsssForegRoundColorSuggested,
                  ("baselineOffsetSuggested" .=) <$>
                    _tsssBaselineOffSetSuggested,
                  ("weightedFontFamilySuggested" .=) <$>
                    _tsssWeightedFontFamilySuggested,
                  ("strikethroughSuggested" .=) <$>
                    _tsssStrikethroughSuggested,
                  ("linkSuggested" .=) <$> _tsssLinkSuggested,
                  ("boldSuggested" .=) <$> _tsssBoldSuggested,
                  ("backgroundColorSuggested" .=) <$>
                    _tsssBackgRoundColorSuggested])

-- | A mask that indicates which of the fields on the base NestingLevel have
-- been changed in this suggestion. For any field set to true, there is a
-- new suggested value.
--
-- /See:/ 'nestingLevelSuggestionState' smart constructor.
data NestingLevelSuggestionState =
  NestingLevelSuggestionState'
    { _nlssGlyphFormatSuggested :: !(Maybe Bool)
    , _nlssBulletAlignmentSuggested :: !(Maybe Bool)
    , _nlssGlyphTypeSuggested :: !(Maybe Bool)
    , _nlssStartNumberSuggested :: !(Maybe Bool)
    , _nlssIndentStartSuggested :: !(Maybe Bool)
    , _nlssGlyphSymbolSuggested :: !(Maybe Bool)
    , _nlssIndentFirstLineSuggested :: !(Maybe Bool)
    , _nlssTextStyleSuggestionState :: !(Maybe TextStyleSuggestionState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NestingLevelSuggestionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlssGlyphFormatSuggested'
--
-- * 'nlssBulletAlignmentSuggested'
--
-- * 'nlssGlyphTypeSuggested'
--
-- * 'nlssStartNumberSuggested'
--
-- * 'nlssIndentStartSuggested'
--
-- * 'nlssGlyphSymbolSuggested'
--
-- * 'nlssIndentFirstLineSuggested'
--
-- * 'nlssTextStyleSuggestionState'
nestingLevelSuggestionState
    :: NestingLevelSuggestionState
nestingLevelSuggestionState =
  NestingLevelSuggestionState'
    { _nlssGlyphFormatSuggested = Nothing
    , _nlssBulletAlignmentSuggested = Nothing
    , _nlssGlyphTypeSuggested = Nothing
    , _nlssStartNumberSuggested = Nothing
    , _nlssIndentStartSuggested = Nothing
    , _nlssGlyphSymbolSuggested = Nothing
    , _nlssIndentFirstLineSuggested = Nothing
    , _nlssTextStyleSuggestionState = Nothing
    }


-- | Indicates if there was a suggested change to glyph_format.
nlssGlyphFormatSuggested :: Lens' NestingLevelSuggestionState (Maybe Bool)
nlssGlyphFormatSuggested
  = lens _nlssGlyphFormatSuggested
      (\ s a -> s{_nlssGlyphFormatSuggested = a})

-- | Indicates if there was a suggested change to bullet_alignment.
nlssBulletAlignmentSuggested :: Lens' NestingLevelSuggestionState (Maybe Bool)
nlssBulletAlignmentSuggested
  = lens _nlssBulletAlignmentSuggested
      (\ s a -> s{_nlssBulletAlignmentSuggested = a})

-- | Indicates if there was a suggested change to glyph_type.
nlssGlyphTypeSuggested :: Lens' NestingLevelSuggestionState (Maybe Bool)
nlssGlyphTypeSuggested
  = lens _nlssGlyphTypeSuggested
      (\ s a -> s{_nlssGlyphTypeSuggested = a})

-- | Indicates if there was a suggested change to start_number.
nlssStartNumberSuggested :: Lens' NestingLevelSuggestionState (Maybe Bool)
nlssStartNumberSuggested
  = lens _nlssStartNumberSuggested
      (\ s a -> s{_nlssStartNumberSuggested = a})

-- | Indicates if there was a suggested change to indent_start.
nlssIndentStartSuggested :: Lens' NestingLevelSuggestionState (Maybe Bool)
nlssIndentStartSuggested
  = lens _nlssIndentStartSuggested
      (\ s a -> s{_nlssIndentStartSuggested = a})

-- | Indicates if there was a suggested change to glyph_symbol.
nlssGlyphSymbolSuggested :: Lens' NestingLevelSuggestionState (Maybe Bool)
nlssGlyphSymbolSuggested
  = lens _nlssGlyphSymbolSuggested
      (\ s a -> s{_nlssGlyphSymbolSuggested = a})

-- | Indicates if there was a suggested change to indent_first_line.
nlssIndentFirstLineSuggested :: Lens' NestingLevelSuggestionState (Maybe Bool)
nlssIndentFirstLineSuggested
  = lens _nlssIndentFirstLineSuggested
      (\ s a -> s{_nlssIndentFirstLineSuggested = a})

-- | A mask that indicates which of the fields in text style have been
-- changed in this suggestion.
nlssTextStyleSuggestionState :: Lens' NestingLevelSuggestionState (Maybe TextStyleSuggestionState)
nlssTextStyleSuggestionState
  = lens _nlssTextStyleSuggestionState
      (\ s a -> s{_nlssTextStyleSuggestionState = a})

instance FromJSON NestingLevelSuggestionState where
        parseJSON
          = withObject "NestingLevelSuggestionState"
              (\ o ->
                 NestingLevelSuggestionState' <$>
                   (o .:? "glyphFormatSuggested") <*>
                     (o .:? "bulletAlignmentSuggested")
                     <*> (o .:? "glyphTypeSuggested")
                     <*> (o .:? "startNumberSuggested")
                     <*> (o .:? "indentStartSuggested")
                     <*> (o .:? "glyphSymbolSuggested")
                     <*> (o .:? "indentFirstLineSuggested")
                     <*> (o .:? "textStyleSuggestionState"))

instance ToJSON NestingLevelSuggestionState where
        toJSON NestingLevelSuggestionState'{..}
          = object
              (catMaybes
                 [("glyphFormatSuggested" .=) <$>
                    _nlssGlyphFormatSuggested,
                  ("bulletAlignmentSuggested" .=) <$>
                    _nlssBulletAlignmentSuggested,
                  ("glyphTypeSuggested" .=) <$>
                    _nlssGlyphTypeSuggested,
                  ("startNumberSuggested" .=) <$>
                    _nlssStartNumberSuggested,
                  ("indentStartSuggested" .=) <$>
                    _nlssIndentStartSuggested,
                  ("glyphSymbolSuggested" .=) <$>
                    _nlssGlyphSymbolSuggested,
                  ("indentFirstLineSuggested" .=) <$>
                    _nlssIndentFirstLineSuggested,
                  ("textStyleSuggestionState" .=) <$>
                    _nlssTextStyleSuggestionState])

-- | Styles that apply to a whole paragraph. Inherited paragraph styles are
-- represented as unset fields in this message. A paragraph style\'s parent
-- depends on where the paragraph style is defined: * The ParagraphStyle on
-- a Paragraph inherits from the paragraph\'s corresponding named style
-- type. * The ParagraphStyle on a named style inherits from the normal
-- text named style. * The ParagraphStyle of the normal text named style
-- inherits from the default paragraph style in the Docs editor. * The
-- ParagraphStyle on a Paragraph element that is contained in a table may
-- inherit its paragraph style from the table style. If the paragraph style
-- does not inherit from a parent, unsetting fields will revert the style
-- to a value matching the defaults in the Docs editor.
--
-- /See:/ 'paragraphStyle' smart constructor.
data ParagraphStyle =
  ParagraphStyle'
    { _psBOrderRight :: !(Maybe ParagraphBOrder)
    , _psKeepLinesTogether :: !(Maybe Bool)
    , _psTabStops :: !(Maybe [TabStop])
    , _psBOrderTop :: !(Maybe ParagraphBOrder)
    , _psLineSpacing :: !(Maybe (Textual Double))
    , _psDirection :: !(Maybe ParagraphStyleDirection)
    , _psIndentFirstLine :: !(Maybe Dimension)
    , _psIndentEnd :: !(Maybe Dimension)
    , _psShading :: !(Maybe Shading)
    , _psAvoidWidowAndOrphan :: !(Maybe Bool)
    , _psNamedStyleType :: !(Maybe ParagraphStyleNamedStyleType)
    , _psIndentStart :: !(Maybe Dimension)
    , _psAlignment :: !(Maybe ParagraphStyleAlignment)
    , _psBOrderLeft :: !(Maybe ParagraphBOrder)
    , _psSpaceBelow :: !(Maybe Dimension)
    , _psSpacingMode :: !(Maybe ParagraphStyleSpacingMode)
    , _psHeadingId :: !(Maybe Text)
    , _psSpaceAbove :: !(Maybe Dimension)
    , _psBOrderBottom :: !(Maybe ParagraphBOrder)
    , _psKeepWithNext :: !(Maybe Bool)
    , _psBOrderBetween :: !(Maybe ParagraphBOrder)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParagraphStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psBOrderRight'
--
-- * 'psKeepLinesTogether'
--
-- * 'psTabStops'
--
-- * 'psBOrderTop'
--
-- * 'psLineSpacing'
--
-- * 'psDirection'
--
-- * 'psIndentFirstLine'
--
-- * 'psIndentEnd'
--
-- * 'psShading'
--
-- * 'psAvoidWidowAndOrphan'
--
-- * 'psNamedStyleType'
--
-- * 'psIndentStart'
--
-- * 'psAlignment'
--
-- * 'psBOrderLeft'
--
-- * 'psSpaceBelow'
--
-- * 'psSpacingMode'
--
-- * 'psHeadingId'
--
-- * 'psSpaceAbove'
--
-- * 'psBOrderBottom'
--
-- * 'psKeepWithNext'
--
-- * 'psBOrderBetween'
paragraphStyle
    :: ParagraphStyle
paragraphStyle =
  ParagraphStyle'
    { _psBOrderRight = Nothing
    , _psKeepLinesTogether = Nothing
    , _psTabStops = Nothing
    , _psBOrderTop = Nothing
    , _psLineSpacing = Nothing
    , _psDirection = Nothing
    , _psIndentFirstLine = Nothing
    , _psIndentEnd = Nothing
    , _psShading = Nothing
    , _psAvoidWidowAndOrphan = Nothing
    , _psNamedStyleType = Nothing
    , _psIndentStart = Nothing
    , _psAlignment = Nothing
    , _psBOrderLeft = Nothing
    , _psSpaceBelow = Nothing
    , _psSpacingMode = Nothing
    , _psHeadingId = Nothing
    , _psSpaceAbove = Nothing
    , _psBOrderBottom = Nothing
    , _psKeepWithNext = Nothing
    , _psBOrderBetween = Nothing
    }


-- | The border to the right of this paragraph. If unset, the value is
-- inherited from the parent. Paragraph borders cannot be partially
-- updated. When making changes to a paragraph border the new border must
-- be specified in its entirety.
psBOrderRight :: Lens' ParagraphStyle (Maybe ParagraphBOrder)
psBOrderRight
  = lens _psBOrderRight
      (\ s a -> s{_psBOrderRight = a})

-- | Whether all lines of the paragraph should be laid out on the same page
-- or column if possible. If unset, the value is inherited from the parent.
psKeepLinesTogether :: Lens' ParagraphStyle (Maybe Bool)
psKeepLinesTogether
  = lens _psKeepLinesTogether
      (\ s a -> s{_psKeepLinesTogether = a})

-- | A list of the tab stops for this paragraph. The list of tab stops is not
-- inherited. This property is read-only.
psTabStops :: Lens' ParagraphStyle [TabStop]
psTabStops
  = lens _psTabStops (\ s a -> s{_psTabStops = a}) .
      _Default
      . _Coerce

-- | The border at the top of this paragraph. If unset, the value is
-- inherited from the parent. The top border is rendered when the paragraph
-- above has different border and indent properties. Paragraph borders
-- cannot be partially updated. When making changes to a paragraph border
-- the new border must be specified in its entirety.
psBOrderTop :: Lens' ParagraphStyle (Maybe ParagraphBOrder)
psBOrderTop
  = lens _psBOrderTop (\ s a -> s{_psBOrderTop = a})

-- | The amount of space between lines, as a percentage of normal, where
-- normal is represented as 100.0. If unset, the value is inherited from
-- the parent.
psLineSpacing :: Lens' ParagraphStyle (Maybe Double)
psLineSpacing
  = lens _psLineSpacing
      (\ s a -> s{_psLineSpacing = a})
      . mapping _Coerce

-- | The text direction of this paragraph. If unset, the value defaults to
-- LEFT_TO_RIGHT since paragraph direction is not inherited.
psDirection :: Lens' ParagraphStyle (Maybe ParagraphStyleDirection)
psDirection
  = lens _psDirection (\ s a -> s{_psDirection = a})

-- | The amount of indentation for the first line of the paragraph. If unset,
-- the value is inherited from the parent.
psIndentFirstLine :: Lens' ParagraphStyle (Maybe Dimension)
psIndentFirstLine
  = lens _psIndentFirstLine
      (\ s a -> s{_psIndentFirstLine = a})

-- | The amount of indentation for the paragraph on the side that corresponds
-- to the end of the text, based on the current paragraph direction. If
-- unset, the value is inherited from the parent.
psIndentEnd :: Lens' ParagraphStyle (Maybe Dimension)
psIndentEnd
  = lens _psIndentEnd (\ s a -> s{_psIndentEnd = a})

-- | The shading of the paragraph. If unset, the value is inherited from the
-- parent.
psShading :: Lens' ParagraphStyle (Maybe Shading)
psShading
  = lens _psShading (\ s a -> s{_psShading = a})

-- | Whether to avoid widows and orphans for the paragraph. If unset, the
-- value is inherited from the parent.
psAvoidWidowAndOrphan :: Lens' ParagraphStyle (Maybe Bool)
psAvoidWidowAndOrphan
  = lens _psAvoidWidowAndOrphan
      (\ s a -> s{_psAvoidWidowAndOrphan = a})

-- | The named style type of the paragraph. Since updating the named style
-- type affects other properties within ParagraphStyle, the named style
-- type is applied before the other properties are updated.
psNamedStyleType :: Lens' ParagraphStyle (Maybe ParagraphStyleNamedStyleType)
psNamedStyleType
  = lens _psNamedStyleType
      (\ s a -> s{_psNamedStyleType = a})

-- | The amount of indentation for the paragraph on the side that corresponds
-- to the start of the text, based on the current paragraph direction. If
-- unset, the value is inherited from the parent.
psIndentStart :: Lens' ParagraphStyle (Maybe Dimension)
psIndentStart
  = lens _psIndentStart
      (\ s a -> s{_psIndentStart = a})

-- | The text alignment for this paragraph.
psAlignment :: Lens' ParagraphStyle (Maybe ParagraphStyleAlignment)
psAlignment
  = lens _psAlignment (\ s a -> s{_psAlignment = a})

-- | The border to the left of this paragraph. If unset, the value is
-- inherited from the parent. Paragraph borders cannot be partially
-- updated. When making changes to a paragraph border the new border must
-- be specified in its entirety.
psBOrderLeft :: Lens' ParagraphStyle (Maybe ParagraphBOrder)
psBOrderLeft
  = lens _psBOrderLeft (\ s a -> s{_psBOrderLeft = a})

-- | The amount of extra space below the paragraph. If unset, the value is
-- inherited from the parent.
psSpaceBelow :: Lens' ParagraphStyle (Maybe Dimension)
psSpaceBelow
  = lens _psSpaceBelow (\ s a -> s{_psSpaceBelow = a})

-- | The spacing mode for the paragraph.
psSpacingMode :: Lens' ParagraphStyle (Maybe ParagraphStyleSpacingMode)
psSpacingMode
  = lens _psSpacingMode
      (\ s a -> s{_psSpacingMode = a})

-- | The heading ID of the paragraph. If empty, then this paragraph is not a
-- heading. This property is read-only.
psHeadingId :: Lens' ParagraphStyle (Maybe Text)
psHeadingId
  = lens _psHeadingId (\ s a -> s{_psHeadingId = a})

-- | The amount of extra space above the paragraph. If unset, the value is
-- inherited from the parent.
psSpaceAbove :: Lens' ParagraphStyle (Maybe Dimension)
psSpaceAbove
  = lens _psSpaceAbove (\ s a -> s{_psSpaceAbove = a})

-- | The border at the bottom of this paragraph. If unset, the value is
-- inherited from the parent. The bottom border is rendered when the
-- paragraph below has different border and indent properties. Paragraph
-- borders cannot be partially updated. When making changes to a paragraph
-- border the new border must be specified in its entirety.
psBOrderBottom :: Lens' ParagraphStyle (Maybe ParagraphBOrder)
psBOrderBottom
  = lens _psBOrderBottom
      (\ s a -> s{_psBOrderBottom = a})

-- | Whether at least a part of this paragraph should be laid out on the same
-- page or column as the next paragraph if possible. If unset, the value is
-- inherited from the parent.
psKeepWithNext :: Lens' ParagraphStyle (Maybe Bool)
psKeepWithNext
  = lens _psKeepWithNext
      (\ s a -> s{_psKeepWithNext = a})

-- | The border between this paragraph and the next and previous paragraphs.
-- If unset, the value is inherited from the parent. The between border is
-- rendered when the adjacent paragraph has the same border and indent
-- properties. Paragraph borders cannot be partially updated. When making
-- changes to a paragraph border the new border must be specified in its
-- entirety.
psBOrderBetween :: Lens' ParagraphStyle (Maybe ParagraphBOrder)
psBOrderBetween
  = lens _psBOrderBetween
      (\ s a -> s{_psBOrderBetween = a})

instance FromJSON ParagraphStyle where
        parseJSON
          = withObject "ParagraphStyle"
              (\ o ->
                 ParagraphStyle' <$>
                   (o .:? "borderRight") <*> (o .:? "keepLinesTogether")
                     <*> (o .:? "tabStops" .!= mempty)
                     <*> (o .:? "borderTop")
                     <*> (o .:? "lineSpacing")
                     <*> (o .:? "direction")
                     <*> (o .:? "indentFirstLine")
                     <*> (o .:? "indentEnd")
                     <*> (o .:? "shading")
                     <*> (o .:? "avoidWidowAndOrphan")
                     <*> (o .:? "namedStyleType")
                     <*> (o .:? "indentStart")
                     <*> (o .:? "alignment")
                     <*> (o .:? "borderLeft")
                     <*> (o .:? "spaceBelow")
                     <*> (o .:? "spacingMode")
                     <*> (o .:? "headingId")
                     <*> (o .:? "spaceAbove")
                     <*> (o .:? "borderBottom")
                     <*> (o .:? "keepWithNext")
                     <*> (o .:? "borderBetween"))

instance ToJSON ParagraphStyle where
        toJSON ParagraphStyle'{..}
          = object
              (catMaybes
                 [("borderRight" .=) <$> _psBOrderRight,
                  ("keepLinesTogether" .=) <$> _psKeepLinesTogether,
                  ("tabStops" .=) <$> _psTabStops,
                  ("borderTop" .=) <$> _psBOrderTop,
                  ("lineSpacing" .=) <$> _psLineSpacing,
                  ("direction" .=) <$> _psDirection,
                  ("indentFirstLine" .=) <$> _psIndentFirstLine,
                  ("indentEnd" .=) <$> _psIndentEnd,
                  ("shading" .=) <$> _psShading,
                  ("avoidWidowAndOrphan" .=) <$>
                    _psAvoidWidowAndOrphan,
                  ("namedStyleType" .=) <$> _psNamedStyleType,
                  ("indentStart" .=) <$> _psIndentStart,
                  ("alignment" .=) <$> _psAlignment,
                  ("borderLeft" .=) <$> _psBOrderLeft,
                  ("spaceBelow" .=) <$> _psSpaceBelow,
                  ("spacingMode" .=) <$> _psSpacingMode,
                  ("headingId" .=) <$> _psHeadingId,
                  ("spaceAbove" .=) <$> _psSpaceAbove,
                  ("borderBottom" .=) <$> _psBOrderBottom,
                  ("keepWithNext" .=) <$> _psKeepWithNext,
                  ("borderBetween" .=) <$> _psBOrderBetween])

-- | A suggested change to PositionedObjectProperties.
--
-- /See:/ 'suggestedPositionedObjectProperties' smart constructor.
data SuggestedPositionedObjectProperties =
  SuggestedPositionedObjectProperties'
    { _spopPositionedObjectProperties :: !(Maybe PositionedObjectProperties)
    , _spopPositionedObjectPropertiesSuggestionState :: !(Maybe PositionedObjectPropertiesSuggestionState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestedPositionedObjectProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spopPositionedObjectProperties'
--
-- * 'spopPositionedObjectPropertiesSuggestionState'
suggestedPositionedObjectProperties
    :: SuggestedPositionedObjectProperties
suggestedPositionedObjectProperties =
  SuggestedPositionedObjectProperties'
    { _spopPositionedObjectProperties = Nothing
    , _spopPositionedObjectPropertiesSuggestionState = Nothing
    }


-- | A PositionedObjectProperties that only includes the changes made in this
-- suggestion. This can be used along with the
-- positioned_object_properties_suggestion_state to see which fields have
-- changed and their new values.
spopPositionedObjectProperties :: Lens' SuggestedPositionedObjectProperties (Maybe PositionedObjectProperties)
spopPositionedObjectProperties
  = lens _spopPositionedObjectProperties
      (\ s a -> s{_spopPositionedObjectProperties = a})

-- | A mask that indicates which of the fields on the base
-- PositionedObjectProperties have been changed in this suggestion.
spopPositionedObjectPropertiesSuggestionState :: Lens' SuggestedPositionedObjectProperties (Maybe PositionedObjectPropertiesSuggestionState)
spopPositionedObjectPropertiesSuggestionState
  = lens _spopPositionedObjectPropertiesSuggestionState
      (\ s a ->
         s{_spopPositionedObjectPropertiesSuggestionState =
             a})

instance FromJSON SuggestedPositionedObjectProperties
         where
        parseJSON
          = withObject "SuggestedPositionedObjectProperties"
              (\ o ->
                 SuggestedPositionedObjectProperties' <$>
                   (o .:? "positionedObjectProperties") <*>
                     (o .:? "positionedObjectPropertiesSuggestionState"))

instance ToJSON SuggestedPositionedObjectProperties
         where
        toJSON SuggestedPositionedObjectProperties'{..}
          = object
              (catMaybes
                 [("positionedObjectProperties" .=) <$>
                    _spopPositionedObjectProperties,
                  ("positionedObjectPropertiesSuggestionState" .=) <$>
                    _spopPositionedObjectPropertiesSuggestionState])

-- | The properties of a column in a table.
--
-- /See:/ 'tableColumnProperties' smart constructor.
data TableColumnProperties =
  TableColumnProperties'
    { _tcpWidth :: !(Maybe Dimension)
    , _tcpWidthType :: !(Maybe TableColumnPropertiesWidthType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableColumnProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcpWidth'
--
-- * 'tcpWidthType'
tableColumnProperties
    :: TableColumnProperties
tableColumnProperties =
  TableColumnProperties' {_tcpWidth = Nothing, _tcpWidthType = Nothing}


-- | The width of the column. Set when the column\'s \`width_type\` is
-- FIXED_WIDTH.
tcpWidth :: Lens' TableColumnProperties (Maybe Dimension)
tcpWidth = lens _tcpWidth (\ s a -> s{_tcpWidth = a})

-- | The width type of the column.
tcpWidthType :: Lens' TableColumnProperties (Maybe TableColumnPropertiesWidthType)
tcpWidthType
  = lens _tcpWidthType (\ s a -> s{_tcpWidthType = a})

instance FromJSON TableColumnProperties where
        parseJSON
          = withObject "TableColumnProperties"
              (\ o ->
                 TableColumnProperties' <$>
                   (o .:? "width") <*> (o .:? "widthType"))

instance ToJSON TableColumnProperties where
        toJSON TableColumnProperties'{..}
          = object
              (catMaybes
                 [("width" .=) <$> _tcpWidth,
                  ("widthType" .=) <$> _tcpWidthType])

-- | Update the styling of all paragraphs that overlap with the given range.
--
-- /See:/ 'updateParagraphStyleRequest' smart constructor.
data UpdateParagraphStyleRequest =
  UpdateParagraphStyleRequest'
    { _upsrRange :: !(Maybe Range)
    , _upsrFields :: !(Maybe GFieldMask)
    , _upsrParagraphStyle :: !(Maybe ParagraphStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateParagraphStyleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upsrRange'
--
-- * 'upsrFields'
--
-- * 'upsrParagraphStyle'
updateParagraphStyleRequest
    :: UpdateParagraphStyleRequest
updateParagraphStyleRequest =
  UpdateParagraphStyleRequest'
    {_upsrRange = Nothing, _upsrFields = Nothing, _upsrParagraphStyle = Nothing}


-- | The range overlapping the paragraphs to style.
upsrRange :: Lens' UpdateParagraphStyleRequest (Maybe Range)
upsrRange
  = lens _upsrRange (\ s a -> s{_upsrRange = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`paragraph_style\` is implied and should not be specified. For
-- example, to update the paragraph style\'s alignment property, set
-- \`fields\` to \`\"alignment\"\`. To reset a property to its default
-- value, include its field name in the field mask but leave the field
-- itself unset.
upsrFields :: Lens' UpdateParagraphStyleRequest (Maybe GFieldMask)
upsrFields
  = lens _upsrFields (\ s a -> s{_upsrFields = a})

-- | The styles to set on the paragraphs. Certain paragraph style changes may
-- cause other changes in order to mirror the behavior of the Docs editor.
-- See the documentation of ParagraphStyle for more information.
upsrParagraphStyle :: Lens' UpdateParagraphStyleRequest (Maybe ParagraphStyle)
upsrParagraphStyle
  = lens _upsrParagraphStyle
      (\ s a -> s{_upsrParagraphStyle = a})

instance FromJSON UpdateParagraphStyleRequest where
        parseJSON
          = withObject "UpdateParagraphStyleRequest"
              (\ o ->
                 UpdateParagraphStyleRequest' <$>
                   (o .:? "range") <*> (o .:? "fields") <*>
                     (o .:? "paragraphStyle"))

instance ToJSON UpdateParagraphStyleRequest where
        toJSON UpdateParagraphStyleRequest'{..}
          = object
              (catMaybes
                 [("range" .=) <$> _upsrRange,
                  ("fields" .=) <$> _upsrFields,
                  ("paragraphStyle" .=) <$> _upsrParagraphStyle])

-- | Replaces all instances of text matching a criteria with replace text.
--
-- /See:/ 'replaceAllTextRequest' smart constructor.
data ReplaceAllTextRequest =
  ReplaceAllTextRequest'
    { _ratrContainsText :: !(Maybe SubstringMatchCriteria)
    , _ratrReplaceText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplaceAllTextRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ratrContainsText'
--
-- * 'ratrReplaceText'
replaceAllTextRequest
    :: ReplaceAllTextRequest
replaceAllTextRequest =
  ReplaceAllTextRequest'
    {_ratrContainsText = Nothing, _ratrReplaceText = Nothing}


-- | Finds text in the document matching this substring.
ratrContainsText :: Lens' ReplaceAllTextRequest (Maybe SubstringMatchCriteria)
ratrContainsText
  = lens _ratrContainsText
      (\ s a -> s{_ratrContainsText = a})

-- | The text that will replace the matched text.
ratrReplaceText :: Lens' ReplaceAllTextRequest (Maybe Text)
ratrReplaceText
  = lens _ratrReplaceText
      (\ s a -> s{_ratrReplaceText = a})

instance FromJSON ReplaceAllTextRequest where
        parseJSON
          = withObject "ReplaceAllTextRequest"
              (\ o ->
                 ReplaceAllTextRequest' <$>
                   (o .:? "containsText") <*> (o .:? "replaceText"))

instance ToJSON ReplaceAllTextRequest where
        toJSON ReplaceAllTextRequest'{..}
          = object
              (catMaybes
                 [("containsText" .=) <$> _ratrContainsText,
                  ("replaceText" .=) <$> _ratrReplaceText])

-- | Output only. The positioned objects in the document, keyed by object ID.
--
-- /See:/ 'documentPositionedObjects' smart constructor.
newtype DocumentPositionedObjects =
  DocumentPositionedObjects'
    { _dpoAddtional :: HashMap Text PositionedObject
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentPositionedObjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpoAddtional'
documentPositionedObjects
    :: HashMap Text PositionedObject -- ^ 'dpoAddtional'
    -> DocumentPositionedObjects
documentPositionedObjects pDpoAddtional_ =
  DocumentPositionedObjects' {_dpoAddtional = _Coerce # pDpoAddtional_}


dpoAddtional :: Lens' DocumentPositionedObjects (HashMap Text PositionedObject)
dpoAddtional
  = lens _dpoAddtional (\ s a -> s{_dpoAddtional = a})
      . _Coerce

instance FromJSON DocumentPositionedObjects where
        parseJSON
          = withObject "DocumentPositionedObjects"
              (\ o ->
                 DocumentPositionedObjects' <$> (parseJSONObject o))

instance ToJSON DocumentPositionedObjects where
        toJSON = toJSON . _dpoAddtional

-- | A table range represents a reference to a subset of a table. It\'s
-- important to note that the cells specified by a table range do not
-- necessarily form a rectangle. For example, let\'s say we have a 3 x 3
-- table where all the cells of the last row are merged together. The table
-- looks like this: [ ] A table range with table cell location =
-- (table_start_location, row = 0, column = 0), row span = 3 and column
-- span = 2 specifies the following cells: x x [ x x x ]
--
-- /See:/ 'tableRange' smart constructor.
data TableRange =
  TableRange'
    { _trColumnSpan :: !(Maybe (Textual Int32))
    , _trRowSpan :: !(Maybe (Textual Int32))
    , _trTableCellLocation :: !(Maybe TableCellLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trColumnSpan'
--
-- * 'trRowSpan'
--
-- * 'trTableCellLocation'
tableRange
    :: TableRange
tableRange =
  TableRange'
    { _trColumnSpan = Nothing
    , _trRowSpan = Nothing
    , _trTableCellLocation = Nothing
    }


-- | The column span of the table range.
trColumnSpan :: Lens' TableRange (Maybe Int32)
trColumnSpan
  = lens _trColumnSpan (\ s a -> s{_trColumnSpan = a})
      . mapping _Coerce

-- | The row span of the table range.
trRowSpan :: Lens' TableRange (Maybe Int32)
trRowSpan
  = lens _trRowSpan (\ s a -> s{_trRowSpan = a}) .
      mapping _Coerce

-- | The cell location where the table range starts.
trTableCellLocation :: Lens' TableRange (Maybe TableCellLocation)
trTableCellLocation
  = lens _trTableCellLocation
      (\ s a -> s{_trTableCellLocation = a})

instance FromJSON TableRange where
        parseJSON
          = withObject "TableRange"
              (\ o ->
                 TableRange' <$>
                   (o .:? "columnSpan") <*> (o .:? "rowSpan") <*>
                     (o .:? "tableCellLocation"))

instance ToJSON TableRange where
        toJSON TableRange'{..}
          = object
              (catMaybes
                 [("columnSpan" .=) <$> _trColumnSpan,
                  ("rowSpan" .=) <$> _trRowSpan,
                  ("tableCellLocation" .=) <$> _trTableCellLocation])

-- | A single update to apply to a document.
--
-- /See:/ 'request'' smart constructor.
data Request' =
  Request''
    { _reqDeletePositionedObject :: !(Maybe DeletePositionedObjectRequest)
    , _reqDeleteFooter :: !(Maybe DeleteFooterRequest)
    , _reqCreateParagraphBullets :: !(Maybe CreateParagraphBulletsRequest)
    , _reqInsertText :: !(Maybe InsertTextRequest)
    , _reqDeleteParagraphBullets :: !(Maybe DeleteParagraphBulletsRequest)
    , _reqDeleteTableRow :: !(Maybe DeleteTableRowRequest)
    , _reqDeleteNamedRange :: !(Maybe DeleteNamedRangeRequest)
    , _reqReplaceAllText :: !(Maybe ReplaceAllTextRequest)
    , _reqUpdateParagraphStyle :: !(Maybe UpdateParagraphStyleRequest)
    , _reqCreateNamedRange :: !(Maybe CreateNamedRangeRequest)
    , _reqReplaceImage :: !(Maybe ReplaceImageRequest)
    , _reqCreateHeader :: !(Maybe CreateHeaderRequest)
    , _reqInsertPageBreak :: !(Maybe InsertPageBreakRequest)
    , _reqCreateFootNote :: !(Maybe CreateFootNoteRequest)
    , _reqInsertSectionBreak :: !(Maybe InsertSectionBreakRequest)
    , _reqCreateFooter :: !(Maybe CreateFooterRequest)
    , _reqDeleteTableColumn :: !(Maybe DeleteTableColumnRequest)
    , _reqInsertInlineImage :: !(Maybe InsertInlineImageRequest)
    , _reqUpdateDocumentStyle :: !(Maybe UpdateDocumentStyleRequest)
    , _reqUpdateSectionStyle :: !(Maybe UpdateSectionStyleRequest)
    , _reqDeleteContentRange :: !(Maybe DeleteContentRangeRequest)
    , _reqInsertTableColumn :: !(Maybe InsertTableColumnRequest)
    , _reqUpdateTableRowStyle :: !(Maybe UpdateTableRowStyleRequest)
    , _reqUpdateTableColumnProperties :: !(Maybe UpdateTableColumnPropertiesRequest)
    , _reqUnmergeTableCells :: !(Maybe UnmergeTableCellsRequest)
    , _reqMergeTableCells :: !(Maybe MergeTableCellsRequest)
    , _reqInsertTableRow :: !(Maybe InsertTableRowRequest)
    , _reqUpdateTextStyle :: !(Maybe UpdateTextStyleRequest)
    , _reqDeleteHeader :: !(Maybe DeleteHeaderRequest)
    , _reqUpdateTableCellStyle :: !(Maybe UpdateTableCellStyleRequest)
    , _reqReplaceNamedRangeContent :: !(Maybe ReplaceNamedRangeContentRequest)
    , _reqInsertTable :: !(Maybe InsertTableRequest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Request' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reqDeletePositionedObject'
--
-- * 'reqDeleteFooter'
--
-- * 'reqCreateParagraphBullets'
--
-- * 'reqInsertText'
--
-- * 'reqDeleteParagraphBullets'
--
-- * 'reqDeleteTableRow'
--
-- * 'reqDeleteNamedRange'
--
-- * 'reqReplaceAllText'
--
-- * 'reqUpdateParagraphStyle'
--
-- * 'reqCreateNamedRange'
--
-- * 'reqReplaceImage'
--
-- * 'reqCreateHeader'
--
-- * 'reqInsertPageBreak'
--
-- * 'reqCreateFootNote'
--
-- * 'reqInsertSectionBreak'
--
-- * 'reqCreateFooter'
--
-- * 'reqDeleteTableColumn'
--
-- * 'reqInsertInlineImage'
--
-- * 'reqUpdateDocumentStyle'
--
-- * 'reqUpdateSectionStyle'
--
-- * 'reqDeleteContentRange'
--
-- * 'reqInsertTableColumn'
--
-- * 'reqUpdateTableRowStyle'
--
-- * 'reqUpdateTableColumnProperties'
--
-- * 'reqUnmergeTableCells'
--
-- * 'reqMergeTableCells'
--
-- * 'reqInsertTableRow'
--
-- * 'reqUpdateTextStyle'
--
-- * 'reqDeleteHeader'
--
-- * 'reqUpdateTableCellStyle'
--
-- * 'reqReplaceNamedRangeContent'
--
-- * 'reqInsertTable'
request'
    :: Request'
request' =
  Request''
    { _reqDeletePositionedObject = Nothing
    , _reqDeleteFooter = Nothing
    , _reqCreateParagraphBullets = Nothing
    , _reqInsertText = Nothing
    , _reqDeleteParagraphBullets = Nothing
    , _reqDeleteTableRow = Nothing
    , _reqDeleteNamedRange = Nothing
    , _reqReplaceAllText = Nothing
    , _reqUpdateParagraphStyle = Nothing
    , _reqCreateNamedRange = Nothing
    , _reqReplaceImage = Nothing
    , _reqCreateHeader = Nothing
    , _reqInsertPageBreak = Nothing
    , _reqCreateFootNote = Nothing
    , _reqInsertSectionBreak = Nothing
    , _reqCreateFooter = Nothing
    , _reqDeleteTableColumn = Nothing
    , _reqInsertInlineImage = Nothing
    , _reqUpdateDocumentStyle = Nothing
    , _reqUpdateSectionStyle = Nothing
    , _reqDeleteContentRange = Nothing
    , _reqInsertTableColumn = Nothing
    , _reqUpdateTableRowStyle = Nothing
    , _reqUpdateTableColumnProperties = Nothing
    , _reqUnmergeTableCells = Nothing
    , _reqMergeTableCells = Nothing
    , _reqInsertTableRow = Nothing
    , _reqUpdateTextStyle = Nothing
    , _reqDeleteHeader = Nothing
    , _reqUpdateTableCellStyle = Nothing
    , _reqReplaceNamedRangeContent = Nothing
    , _reqInsertTable = Nothing
    }


-- | Deletes a positioned object from the document.
reqDeletePositionedObject :: Lens' Request' (Maybe DeletePositionedObjectRequest)
reqDeletePositionedObject
  = lens _reqDeletePositionedObject
      (\ s a -> s{_reqDeletePositionedObject = a})

-- | Deletes a footer from the document.
reqDeleteFooter :: Lens' Request' (Maybe DeleteFooterRequest)
reqDeleteFooter
  = lens _reqDeleteFooter
      (\ s a -> s{_reqDeleteFooter = a})

-- | Creates bullets for paragraphs.
reqCreateParagraphBullets :: Lens' Request' (Maybe CreateParagraphBulletsRequest)
reqCreateParagraphBullets
  = lens _reqCreateParagraphBullets
      (\ s a -> s{_reqCreateParagraphBullets = a})

-- | Inserts text at the specified location.
reqInsertText :: Lens' Request' (Maybe InsertTextRequest)
reqInsertText
  = lens _reqInsertText
      (\ s a -> s{_reqInsertText = a})

-- | Deletes bullets from paragraphs.
reqDeleteParagraphBullets :: Lens' Request' (Maybe DeleteParagraphBulletsRequest)
reqDeleteParagraphBullets
  = lens _reqDeleteParagraphBullets
      (\ s a -> s{_reqDeleteParagraphBullets = a})

-- | Deletes a row from a table.
reqDeleteTableRow :: Lens' Request' (Maybe DeleteTableRowRequest)
reqDeleteTableRow
  = lens _reqDeleteTableRow
      (\ s a -> s{_reqDeleteTableRow = a})

-- | Deletes a named range.
reqDeleteNamedRange :: Lens' Request' (Maybe DeleteNamedRangeRequest)
reqDeleteNamedRange
  = lens _reqDeleteNamedRange
      (\ s a -> s{_reqDeleteNamedRange = a})

-- | Replaces all instances of the specified text.
reqReplaceAllText :: Lens' Request' (Maybe ReplaceAllTextRequest)
reqReplaceAllText
  = lens _reqReplaceAllText
      (\ s a -> s{_reqReplaceAllText = a})

-- | Updates the paragraph style at the specified range.
reqUpdateParagraphStyle :: Lens' Request' (Maybe UpdateParagraphStyleRequest)
reqUpdateParagraphStyle
  = lens _reqUpdateParagraphStyle
      (\ s a -> s{_reqUpdateParagraphStyle = a})

-- | Creates a named range.
reqCreateNamedRange :: Lens' Request' (Maybe CreateNamedRangeRequest)
reqCreateNamedRange
  = lens _reqCreateNamedRange
      (\ s a -> s{_reqCreateNamedRange = a})

-- | Replaces an image in the document.
reqReplaceImage :: Lens' Request' (Maybe ReplaceImageRequest)
reqReplaceImage
  = lens _reqReplaceImage
      (\ s a -> s{_reqReplaceImage = a})

-- | Creates a header.
reqCreateHeader :: Lens' Request' (Maybe CreateHeaderRequest)
reqCreateHeader
  = lens _reqCreateHeader
      (\ s a -> s{_reqCreateHeader = a})

-- | Inserts a page break at the specified location.
reqInsertPageBreak :: Lens' Request' (Maybe InsertPageBreakRequest)
reqInsertPageBreak
  = lens _reqInsertPageBreak
      (\ s a -> s{_reqInsertPageBreak = a})

-- | Creates a footnote.
reqCreateFootNote :: Lens' Request' (Maybe CreateFootNoteRequest)
reqCreateFootNote
  = lens _reqCreateFootNote
      (\ s a -> s{_reqCreateFootNote = a})

-- | Inserts a section break at the specified location.
reqInsertSectionBreak :: Lens' Request' (Maybe InsertSectionBreakRequest)
reqInsertSectionBreak
  = lens _reqInsertSectionBreak
      (\ s a -> s{_reqInsertSectionBreak = a})

-- | Creates a footer.
reqCreateFooter :: Lens' Request' (Maybe CreateFooterRequest)
reqCreateFooter
  = lens _reqCreateFooter
      (\ s a -> s{_reqCreateFooter = a})

-- | Deletes a column from a table.
reqDeleteTableColumn :: Lens' Request' (Maybe DeleteTableColumnRequest)
reqDeleteTableColumn
  = lens _reqDeleteTableColumn
      (\ s a -> s{_reqDeleteTableColumn = a})

-- | Inserts an inline image at the specified location.
reqInsertInlineImage :: Lens' Request' (Maybe InsertInlineImageRequest)
reqInsertInlineImage
  = lens _reqInsertInlineImage
      (\ s a -> s{_reqInsertInlineImage = a})

-- | Updates the style of the document.
reqUpdateDocumentStyle :: Lens' Request' (Maybe UpdateDocumentStyleRequest)
reqUpdateDocumentStyle
  = lens _reqUpdateDocumentStyle
      (\ s a -> s{_reqUpdateDocumentStyle = a})

-- | Updates the section style of the specified range.
reqUpdateSectionStyle :: Lens' Request' (Maybe UpdateSectionStyleRequest)
reqUpdateSectionStyle
  = lens _reqUpdateSectionStyle
      (\ s a -> s{_reqUpdateSectionStyle = a})

-- | Deletes content from the document.
reqDeleteContentRange :: Lens' Request' (Maybe DeleteContentRangeRequest)
reqDeleteContentRange
  = lens _reqDeleteContentRange
      (\ s a -> s{_reqDeleteContentRange = a})

-- | Inserts an empty column into a table.
reqInsertTableColumn :: Lens' Request' (Maybe InsertTableColumnRequest)
reqInsertTableColumn
  = lens _reqInsertTableColumn
      (\ s a -> s{_reqInsertTableColumn = a})

-- | Updates the row style in a table.
reqUpdateTableRowStyle :: Lens' Request' (Maybe UpdateTableRowStyleRequest)
reqUpdateTableRowStyle
  = lens _reqUpdateTableRowStyle
      (\ s a -> s{_reqUpdateTableRowStyle = a})

-- | Updates the properties of columns in a table.
reqUpdateTableColumnProperties :: Lens' Request' (Maybe UpdateTableColumnPropertiesRequest)
reqUpdateTableColumnProperties
  = lens _reqUpdateTableColumnProperties
      (\ s a -> s{_reqUpdateTableColumnProperties = a})

-- | Unmerges cells in a table.
reqUnmergeTableCells :: Lens' Request' (Maybe UnmergeTableCellsRequest)
reqUnmergeTableCells
  = lens _reqUnmergeTableCells
      (\ s a -> s{_reqUnmergeTableCells = a})

-- | Merges cells in a table.
reqMergeTableCells :: Lens' Request' (Maybe MergeTableCellsRequest)
reqMergeTableCells
  = lens _reqMergeTableCells
      (\ s a -> s{_reqMergeTableCells = a})

-- | Inserts an empty row into a table.
reqInsertTableRow :: Lens' Request' (Maybe InsertTableRowRequest)
reqInsertTableRow
  = lens _reqInsertTableRow
      (\ s a -> s{_reqInsertTableRow = a})

-- | Updates the text style at the specified range.
reqUpdateTextStyle :: Lens' Request' (Maybe UpdateTextStyleRequest)
reqUpdateTextStyle
  = lens _reqUpdateTextStyle
      (\ s a -> s{_reqUpdateTextStyle = a})

-- | Deletes a header from the document.
reqDeleteHeader :: Lens' Request' (Maybe DeleteHeaderRequest)
reqDeleteHeader
  = lens _reqDeleteHeader
      (\ s a -> s{_reqDeleteHeader = a})

-- | Updates the style of table cells.
reqUpdateTableCellStyle :: Lens' Request' (Maybe UpdateTableCellStyleRequest)
reqUpdateTableCellStyle
  = lens _reqUpdateTableCellStyle
      (\ s a -> s{_reqUpdateTableCellStyle = a})

-- | Replaces the content in a named range.
reqReplaceNamedRangeContent :: Lens' Request' (Maybe ReplaceNamedRangeContentRequest)
reqReplaceNamedRangeContent
  = lens _reqReplaceNamedRangeContent
      (\ s a -> s{_reqReplaceNamedRangeContent = a})

-- | Inserts a table at the specified location.
reqInsertTable :: Lens' Request' (Maybe InsertTableRequest)
reqInsertTable
  = lens _reqInsertTable
      (\ s a -> s{_reqInsertTable = a})

instance FromJSON Request' where
        parseJSON
          = withObject "Request"
              (\ o ->
                 Request'' <$>
                   (o .:? "deletePositionedObject") <*>
                     (o .:? "deleteFooter")
                     <*> (o .:? "createParagraphBullets")
                     <*> (o .:? "insertText")
                     <*> (o .:? "deleteParagraphBullets")
                     <*> (o .:? "deleteTableRow")
                     <*> (o .:? "deleteNamedRange")
                     <*> (o .:? "replaceAllText")
                     <*> (o .:? "updateParagraphStyle")
                     <*> (o .:? "createNamedRange")
                     <*> (o .:? "replaceImage")
                     <*> (o .:? "createHeader")
                     <*> (o .:? "insertPageBreak")
                     <*> (o .:? "createFootnote")
                     <*> (o .:? "insertSectionBreak")
                     <*> (o .:? "createFooter")
                     <*> (o .:? "deleteTableColumn")
                     <*> (o .:? "insertInlineImage")
                     <*> (o .:? "updateDocumentStyle")
                     <*> (o .:? "updateSectionStyle")
                     <*> (o .:? "deleteContentRange")
                     <*> (o .:? "insertTableColumn")
                     <*> (o .:? "updateTableRowStyle")
                     <*> (o .:? "updateTableColumnProperties")
                     <*> (o .:? "unmergeTableCells")
                     <*> (o .:? "mergeTableCells")
                     <*> (o .:? "insertTableRow")
                     <*> (o .:? "updateTextStyle")
                     <*> (o .:? "deleteHeader")
                     <*> (o .:? "updateTableCellStyle")
                     <*> (o .:? "replaceNamedRangeContent")
                     <*> (o .:? "insertTable"))

instance ToJSON Request' where
        toJSON Request''{..}
          = object
              (catMaybes
                 [("deletePositionedObject" .=) <$>
                    _reqDeletePositionedObject,
                  ("deleteFooter" .=) <$> _reqDeleteFooter,
                  ("createParagraphBullets" .=) <$>
                    _reqCreateParagraphBullets,
                  ("insertText" .=) <$> _reqInsertText,
                  ("deleteParagraphBullets" .=) <$>
                    _reqDeleteParagraphBullets,
                  ("deleteTableRow" .=) <$> _reqDeleteTableRow,
                  ("deleteNamedRange" .=) <$> _reqDeleteNamedRange,
                  ("replaceAllText" .=) <$> _reqReplaceAllText,
                  ("updateParagraphStyle" .=) <$>
                    _reqUpdateParagraphStyle,
                  ("createNamedRange" .=) <$> _reqCreateNamedRange,
                  ("replaceImage" .=) <$> _reqReplaceImage,
                  ("createHeader" .=) <$> _reqCreateHeader,
                  ("insertPageBreak" .=) <$> _reqInsertPageBreak,
                  ("createFootnote" .=) <$> _reqCreateFootNote,
                  ("insertSectionBreak" .=) <$> _reqInsertSectionBreak,
                  ("createFooter" .=) <$> _reqCreateFooter,
                  ("deleteTableColumn" .=) <$> _reqDeleteTableColumn,
                  ("insertInlineImage" .=) <$> _reqInsertInlineImage,
                  ("updateDocumentStyle" .=) <$>
                    _reqUpdateDocumentStyle,
                  ("updateSectionStyle" .=) <$> _reqUpdateSectionStyle,
                  ("deleteContentRange" .=) <$> _reqDeleteContentRange,
                  ("insertTableColumn" .=) <$> _reqInsertTableColumn,
                  ("updateTableRowStyle" .=) <$>
                    _reqUpdateTableRowStyle,
                  ("updateTableColumnProperties" .=) <$>
                    _reqUpdateTableColumnProperties,
                  ("unmergeTableCells" .=) <$> _reqUnmergeTableCells,
                  ("mergeTableCells" .=) <$> _reqMergeTableCells,
                  ("insertTableRow" .=) <$> _reqInsertTableRow,
                  ("updateTextStyle" .=) <$> _reqUpdateTextStyle,
                  ("deleteHeader" .=) <$> _reqDeleteHeader,
                  ("updateTableCellStyle" .=) <$>
                    _reqUpdateTableCellStyle,
                  ("replaceNamedRangeContent" .=) <$>
                    _reqReplaceNamedRangeContent,
                  ("insertTable" .=) <$> _reqInsertTable])

-- | The suggested changes to the positioned object properties, keyed by
-- suggestion ID.
--
-- /See:/ 'positionedObjectSuggestedPositionedObjectPropertiesChanges' smart constructor.
newtype PositionedObjectSuggestedPositionedObjectPropertiesChanges =
  PositionedObjectSuggestedPositionedObjectPropertiesChanges'
    { _pospopcAddtional :: HashMap Text SuggestedPositionedObjectProperties
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PositionedObjectSuggestedPositionedObjectPropertiesChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pospopcAddtional'
positionedObjectSuggestedPositionedObjectPropertiesChanges
    :: HashMap Text SuggestedPositionedObjectProperties -- ^ 'pospopcAddtional'
    -> PositionedObjectSuggestedPositionedObjectPropertiesChanges
positionedObjectSuggestedPositionedObjectPropertiesChanges pPospopcAddtional_ =
  PositionedObjectSuggestedPositionedObjectPropertiesChanges'
    {_pospopcAddtional = _Coerce # pPospopcAddtional_}


pospopcAddtional :: Lens' PositionedObjectSuggestedPositionedObjectPropertiesChanges (HashMap Text SuggestedPositionedObjectProperties)
pospopcAddtional
  = lens _pospopcAddtional
      (\ s a -> s{_pospopcAddtional = a})
      . _Coerce

instance FromJSON
           PositionedObjectSuggestedPositionedObjectPropertiesChanges
         where
        parseJSON
          = withObject
              "PositionedObjectSuggestedPositionedObjectPropertiesChanges"
              (\ o ->
                 PositionedObjectSuggestedPositionedObjectPropertiesChanges'
                   <$> (parseJSONObject o))

instance ToJSON
           PositionedObjectSuggestedPositionedObjectPropertiesChanges
         where
        toJSON = toJSON . _pospopcAddtional

-- | A criteria that matches a specific string of text in the document.
--
-- /See:/ 'substringMatchCriteria' smart constructor.
data SubstringMatchCriteria =
  SubstringMatchCriteria'
    { _smcMatchCase :: !(Maybe Bool)
    , _smcText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubstringMatchCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smcMatchCase'
--
-- * 'smcText'
substringMatchCriteria
    :: SubstringMatchCriteria
substringMatchCriteria =
  SubstringMatchCriteria' {_smcMatchCase = Nothing, _smcText = Nothing}


-- | Indicates whether the search should respect case: - \`True\`: the search
-- is case sensitive. - \`False\`: the search is case insensitive.
smcMatchCase :: Lens' SubstringMatchCriteria (Maybe Bool)
smcMatchCase
  = lens _smcMatchCase (\ s a -> s{_smcMatchCase = a})

-- | The text to search for in the document.
smcText :: Lens' SubstringMatchCriteria (Maybe Text)
smcText = lens _smcText (\ s a -> s{_smcText = a})

instance FromJSON SubstringMatchCriteria where
        parseJSON
          = withObject "SubstringMatchCriteria"
              (\ o ->
                 SubstringMatchCriteria' <$>
                   (o .:? "matchCase") <*> (o .:? "text"))

instance ToJSON SubstringMatchCriteria where
        toJSON SubstringMatchCriteria'{..}
          = object
              (catMaybes
                 [("matchCase" .=) <$> _smcMatchCase,
                  ("text" .=) <$> _smcText])
