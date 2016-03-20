{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Language.Detections.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detect the language of text.
--
-- /See:/ <https://developers.google.com/translate/v2/using_rest Translate API Reference> for @language.detections.list@.
module Network.Google.Resource.Language.Detections.List
    (
    -- * REST Resource
      DetectionsListResource

    -- * Creating a Request
    , detectionsList
    , DetectionsList

    -- * Request Lenses
    , dlQ
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types

-- | A resource alias for @language.detections.list@ method which the
-- 'DetectionsList' request conforms to.
type DetectionsListResource =
     "language" :>
       "translate" :>
         "v2" :>
           "detect" :>
             QueryParams "q" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] DetectionsListResponse

-- | Detect the language of text.
--
-- /See:/ 'detectionsList' smart constructor.
newtype DetectionsList = DetectionsList
    { _dlQ :: [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DetectionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQ'
detectionsList
    :: [Text] -- ^ 'dlQ'
    -> DetectionsList
detectionsList pDlQ_ =
    DetectionsList
    { _dlQ = _Coerce # pDlQ_
    }

-- | The text to detect
dlQ :: Lens' DetectionsList [Text]
dlQ = lens _dlQ (\ s a -> s{_dlQ = a}) . _Coerce

instance GoogleRequest DetectionsList where
        type Rs DetectionsList = DetectionsListResponse
        requestClient DetectionsList{..}
          = go _dlQ (Just AltJSON) translateService
          where go
                  = buildClient (Proxy :: Proxy DetectionsListResource)
                      mempty
