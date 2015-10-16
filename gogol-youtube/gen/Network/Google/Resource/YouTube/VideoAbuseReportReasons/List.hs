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
-- Module      : Network.Google.Resource.YouTube.VideoAbuseReportReasons.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of abuse reasons that can be used for reporting abusive
-- videos.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeVideoAbuseReportReasonsList@.
module Network.Google.Resource.YouTube.VideoAbuseReportReasons.List
    (
    -- * REST Resource
      VideoAbuseReportReasonsListResource

    -- * Creating a Request
    , videoAbuseReportReasonsList'
    , VideoAbuseReportReasonsList'

    -- * Request Lenses
    , varrlPart
    , varrlHl
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeVideoAbuseReportReasonsList@ method which the
-- 'VideoAbuseReportReasonsList'' request conforms to.
type VideoAbuseReportReasonsListResource =
     "videoAbuseReportReasons" :>
       QueryParam "part" Text :>
         QueryParam "hl" Text :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] VideoAbuseReportReasonListResponse

-- | Returns a list of abuse reasons that can be used for reporting abusive
-- videos.
--
-- /See:/ 'videoAbuseReportReasonsList'' smart constructor.
data VideoAbuseReportReasonsList' = VideoAbuseReportReasonsList'
    { _varrlPart :: !Text
    , _varrlHl   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAbuseReportReasonsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varrlPart'
--
-- * 'varrlHl'
videoAbuseReportReasonsList'
    :: Text -- ^ 'part'
    -> VideoAbuseReportReasonsList'
videoAbuseReportReasonsList' pVarrlPart_ =
    VideoAbuseReportReasonsList'
    { _varrlPart = pVarrlPart_
    , _varrlHl = "en_US"
    }

-- | The part parameter specifies the videoCategory resource parts that the
-- API response will include. Supported values are id and snippet.
varrlPart :: Lens' VideoAbuseReportReasonsList' Text
varrlPart
  = lens _varrlPart (\ s a -> s{_varrlPart = a})

-- | The hl parameter specifies the language that should be used for text
-- values in the API response.
varrlHl :: Lens' VideoAbuseReportReasonsList' Text
varrlHl = lens _varrlHl (\ s a -> s{_varrlHl = a})

instance GoogleRequest VideoAbuseReportReasonsList'
         where
        type Rs VideoAbuseReportReasonsList' =
             VideoAbuseReportReasonListResponse
        requestClient VideoAbuseReportReasonsList'{..}
          = go (Just _varrlPart) (Just _varrlHl) (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy VideoAbuseReportReasonsListResource)
                      mempty
