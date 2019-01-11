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
-- Module      : Network.Google.Resource.DFAReporting.VideoFormats.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists available video formats.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.videoFormats.list@.
module Network.Google.Resource.DFAReporting.VideoFormats.List
    (
    -- * REST Resource
      VideoFormatsListResource

    -- * Creating a Request
    , videoFormatsList
    , VideoFormatsList

    -- * Request Lenses
    , vflProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.videoFormats.list@ method which the
-- 'VideoFormatsList' request conforms to.
type VideoFormatsListResource =
     "dfareporting" :>
       "v3.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "videoFormats" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] VideoFormatsListResponse

-- | Lists available video formats.
--
-- /See:/ 'videoFormatsList' smart constructor.
newtype VideoFormatsList = VideoFormatsList'
    { _vflProFileId :: Textual Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoFormatsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vflProFileId'
videoFormatsList
    :: Int64 -- ^ 'vflProFileId'
    -> VideoFormatsList
videoFormatsList pVflProFileId_ =
    VideoFormatsList'
    { _vflProFileId = _Coerce # pVflProFileId_
    }

-- | User profile ID associated with this request.
vflProFileId :: Lens' VideoFormatsList Int64
vflProFileId
  = lens _vflProFileId (\ s a -> s{_vflProFileId = a})
      . _Coerce

instance GoogleRequest VideoFormatsList where
        type Rs VideoFormatsList = VideoFormatsListResponse
        type Scopes VideoFormatsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient VideoFormatsList'{..}
          = go _vflProFileId (Just AltJSON) dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy VideoFormatsListResource)
                      mempty
