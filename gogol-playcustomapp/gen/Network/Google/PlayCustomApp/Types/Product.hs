{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PlayCustomApp.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PlayCustomApp.Types.Product where

import Network.Google.PlayCustomApp.Types.Sum
import Network.Google.Prelude

-- | This resource represents a custom app.
--
-- /See:/ 'customApp' smart constructor.
data CustomApp =
  CustomApp'
    { _caLanguageCode :: !(Maybe Text)
    , _caPackageName :: !(Maybe Text)
    , _caTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomApp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caLanguageCode'
--
-- * 'caPackageName'
--
-- * 'caTitle'
customApp
    :: CustomApp
customApp =
  CustomApp'
    {_caLanguageCode = Nothing, _caPackageName = Nothing, _caTitle = Nothing}


-- | Default listing language in BCP 47 format.
caLanguageCode :: Lens' CustomApp (Maybe Text)
caLanguageCode
  = lens _caLanguageCode
      (\ s a -> s{_caLanguageCode = a})

-- | Output only. Package name of the created Android app. Only present in
-- the API response.
caPackageName :: Lens' CustomApp (Maybe Text)
caPackageName
  = lens _caPackageName
      (\ s a -> s{_caPackageName = a})

-- | Title for the Android app.
caTitle :: Lens' CustomApp (Maybe Text)
caTitle = lens _caTitle (\ s a -> s{_caTitle = a})

instance FromJSON CustomApp where
        parseJSON
          = withObject "CustomApp"
              (\ o ->
                 CustomApp' <$>
                   (o .:? "languageCode") <*> (o .:? "packageName") <*>
                     (o .:? "title"))

instance ToJSON CustomApp where
        toJSON CustomApp'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _caLanguageCode,
                  ("packageName" .=) <$> _caPackageName,
                  ("title" .=) <$> _caTitle])
