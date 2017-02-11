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
-- Module      : Network.Google.Resource.DFAReporting.VideoFormats.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one video format by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.videoFormats.get@.
module Network.Google.Resource.DFAReporting.VideoFormats.Get
    (
    -- * REST Resource
      VideoFormatsGetResource

    -- * Creating a Request
    , videoFormatsGet
    , VideoFormatsGet

    -- * Request Lenses
    , vfgProFileId
    , vfgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.videoFormats.get@ method which the
-- 'VideoFormatsGet' request conforms to.
type VideoFormatsGetResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "videoFormats" :>
               Capture "id" (Textual Int32) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] VideoFormat

-- | Gets one video format by ID.
--
-- /See:/ 'videoFormatsGet' smart constructor.
data VideoFormatsGet = VideoFormatsGet'
    { _vfgProFileId :: !(Textual Int64)
    , _vfgId        :: !(Textual Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoFormatsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vfgProFileId'
--
-- * 'vfgId'
videoFormatsGet
    :: Int64 -- ^ 'vfgProFileId'
    -> Int32 -- ^ 'vfgId'
    -> VideoFormatsGet
videoFormatsGet pVfgProFileId_ pVfgId_ =
    VideoFormatsGet'
    { _vfgProFileId = _Coerce # pVfgProFileId_
    , _vfgId = _Coerce # pVfgId_
    }

-- | User profile ID associated with this request.
vfgProFileId :: Lens' VideoFormatsGet Int64
vfgProFileId
  = lens _vfgProFileId (\ s a -> s{_vfgProFileId = a})
      . _Coerce

-- | Video format ID.
vfgId :: Lens' VideoFormatsGet Int32
vfgId
  = lens _vfgId (\ s a -> s{_vfgId = a}) . _Coerce

instance GoogleRequest VideoFormatsGet where
        type Rs VideoFormatsGet = VideoFormat
        type Scopes VideoFormatsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient VideoFormatsGet'{..}
          = go _vfgProFileId _vfgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy VideoFormatsGetResource)
                      mempty
