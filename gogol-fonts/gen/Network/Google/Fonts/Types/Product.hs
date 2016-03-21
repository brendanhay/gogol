{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Fonts.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Fonts.Types.Product where

import           Network.Google.Fonts.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'webfont' smart constructor.
data Webfont = Webfont'
    { _wVariants     :: !(Maybe [Text])
    , _wKind         :: !Text
    , _wCategory     :: !(Maybe Text)
    , _wFamily       :: !(Maybe Text)
    , _wVersion      :: !(Maybe Text)
    , _wFiles        :: !(Maybe WebfontFiles)
    , _wSubSets      :: !(Maybe [Text])
    , _wLastModified :: !(Maybe Date')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Webfont' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wVariants'
--
-- * 'wKind'
--
-- * 'wCategory'
--
-- * 'wFamily'
--
-- * 'wVersion'
--
-- * 'wFiles'
--
-- * 'wSubSets'
--
-- * 'wLastModified'
webfont
    :: Webfont
webfont =
    Webfont'
    { _wVariants = Nothing
    , _wKind = "webfonts#webfont"
    , _wCategory = Nothing
    , _wFamily = Nothing
    , _wVersion = Nothing
    , _wFiles = Nothing
    , _wSubSets = Nothing
    , _wLastModified = Nothing
    }

-- | The available variants for the font.
wVariants :: Lens' Webfont [Text]
wVariants
  = lens _wVariants (\ s a -> s{_wVariants = a}) .
      _Default
      . _Coerce

-- | This kind represents a webfont object in the webfonts service.
wKind :: Lens' Webfont Text
wKind = lens _wKind (\ s a -> s{_wKind = a})

-- | The category of the font.
wCategory :: Lens' Webfont (Maybe Text)
wCategory
  = lens _wCategory (\ s a -> s{_wCategory = a})

-- | The name of the font.
wFamily :: Lens' Webfont (Maybe Text)
wFamily = lens _wFamily (\ s a -> s{_wFamily = a})

-- | The font version.
wVersion :: Lens' Webfont (Maybe Text)
wVersion = lens _wVersion (\ s a -> s{_wVersion = a})

-- | The font files (with all supported scripts) for each one of the
-- available variants, as a key : value map.
wFiles :: Lens' Webfont (Maybe WebfontFiles)
wFiles = lens _wFiles (\ s a -> s{_wFiles = a})

-- | The scripts supported by the font.
wSubSets :: Lens' Webfont [Text]
wSubSets
  = lens _wSubSets (\ s a -> s{_wSubSets = a}) .
      _Default
      . _Coerce

-- | The date (format \"yyyy-MM-dd\") the font was modified for the last
-- time.
wLastModified :: Lens' Webfont (Maybe Day)
wLastModified
  = lens _wLastModified
      (\ s a -> s{_wLastModified = a})
      . mapping _Date

instance FromJSON Webfont where
        parseJSON
          = withObject "Webfont"
              (\ o ->
                 Webfont' <$>
                   (o .:? "variants" .!= mempty) <*>
                     (o .:? "kind" .!= "webfonts#webfont")
                     <*> (o .:? "category")
                     <*> (o .:? "family")
                     <*> (o .:? "version")
                     <*> (o .:? "files")
                     <*> (o .:? "subsets" .!= mempty)
                     <*> (o .:? "lastModified"))

instance ToJSON Webfont where
        toJSON Webfont'{..}
          = object
              (catMaybes
                 [("variants" .=) <$> _wVariants,
                  Just ("kind" .= _wKind),
                  ("category" .=) <$> _wCategory,
                  ("family" .=) <$> _wFamily,
                  ("version" .=) <$> _wVersion,
                  ("files" .=) <$> _wFiles,
                  ("subsets" .=) <$> _wSubSets,
                  ("lastModified" .=) <$> _wLastModified])

--
-- /See:/ 'webfontList' smart constructor.
data WebfontList = WebfontList'
    { _wlKind  :: !Text
    , _wlItems :: !(Maybe [Webfont])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebfontList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlKind'
--
-- * 'wlItems'
webfontList
    :: WebfontList
webfontList =
    WebfontList'
    { _wlKind = "webfonts#webfontList"
    , _wlItems = Nothing
    }

-- | This kind represents a list of webfont objects in the webfonts service.
wlKind :: Lens' WebfontList Text
wlKind = lens _wlKind (\ s a -> s{_wlKind = a})

-- | The list of fonts currently served by the Google Fonts API.
wlItems :: Lens' WebfontList [Webfont]
wlItems
  = lens _wlItems (\ s a -> s{_wlItems = a}) . _Default
      . _Coerce

instance FromJSON WebfontList where
        parseJSON
          = withObject "WebfontList"
              (\ o ->
                 WebfontList' <$>
                   (o .:? "kind" .!= "webfonts#webfontList") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON WebfontList where
        toJSON WebfontList'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _wlKind),
                  ("items" .=) <$> _wlItems])

-- | The font files (with all supported scripts) for each one of the
-- available variants, as a key : value map.
--
-- /See:/ 'webfontFiles' smart constructor.
newtype WebfontFiles = WebfontFiles'
    { _wfAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebfontFiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wfAddtional'
webfontFiles
    :: HashMap Text Text -- ^ 'wfAddtional'
    -> WebfontFiles
webfontFiles pWfAddtional_ =
    WebfontFiles'
    { _wfAddtional = _Coerce # pWfAddtional_
    }

-- | The font file URL (value) for an specific variant (key).
wfAddtional :: Lens' WebfontFiles (HashMap Text Text)
wfAddtional
  = lens _wfAddtional (\ s a -> s{_wfAddtional = a}) .
      _Coerce

instance FromJSON WebfontFiles where
        parseJSON
          = withObject "WebfontFiles"
              (\ o -> WebfontFiles' <$> (parseJSONObject o))

instance ToJSON WebfontFiles where
        toJSON = toJSON . _wfAddtional
