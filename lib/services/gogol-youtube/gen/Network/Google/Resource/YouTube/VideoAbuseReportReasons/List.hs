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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videoAbuseReportReasons.list@.
module Network.Google.Resource.YouTube.VideoAbuseReportReasons.List
    (
    -- * REST Resource
      VideoAbuseReportReasonsListResource

    -- * Creating a Request
    , videoAbuseReportReasonsList
    , VideoAbuseReportReasonsList

    -- * Request Lenses
    , varrlXgafv
    , varrlPart
    , varrlUploadProtocol
    , varrlAccessToken
    , varrlUploadType
    , varrlHl
    , varrlCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.videoAbuseReportReasons.list@ method which the
-- 'VideoAbuseReportReasonsList' request conforms to.
type VideoAbuseReportReasonsListResource =
     "youtube" :>
       "v3" :>
         "videoAbuseReportReasons" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "hl" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] VideoAbuseReportReasonListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'videoAbuseReportReasonsList' smart constructor.
data VideoAbuseReportReasonsList =
  VideoAbuseReportReasonsList'
    { _varrlXgafv :: !(Maybe Xgafv)
    , _varrlPart :: ![Text]
    , _varrlUploadProtocol :: !(Maybe Text)
    , _varrlAccessToken :: !(Maybe Text)
    , _varrlUploadType :: !(Maybe Text)
    , _varrlHl :: !Text
    , _varrlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideoAbuseReportReasonsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varrlXgafv'
--
-- * 'varrlPart'
--
-- * 'varrlUploadProtocol'
--
-- * 'varrlAccessToken'
--
-- * 'varrlUploadType'
--
-- * 'varrlHl'
--
-- * 'varrlCallback'
videoAbuseReportReasonsList
    :: [Text] -- ^ 'varrlPart'
    -> VideoAbuseReportReasonsList
videoAbuseReportReasonsList pVarrlPart_ =
  VideoAbuseReportReasonsList'
    { _varrlXgafv = Nothing
    , _varrlPart = _Coerce # pVarrlPart_
    , _varrlUploadProtocol = Nothing
    , _varrlAccessToken = Nothing
    , _varrlUploadType = Nothing
    , _varrlHl = "en-US"
    , _varrlCallback = Nothing
    }


-- | V1 error format.
varrlXgafv :: Lens' VideoAbuseReportReasonsList (Maybe Xgafv)
varrlXgafv
  = lens _varrlXgafv (\ s a -> s{_varrlXgafv = a})

-- | The *part* parameter specifies the videoCategory resource parts that the
-- API response will include. Supported values are id and snippet.
varrlPart :: Lens' VideoAbuseReportReasonsList [Text]
varrlPart
  = lens _varrlPart (\ s a -> s{_varrlPart = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
varrlUploadProtocol :: Lens' VideoAbuseReportReasonsList (Maybe Text)
varrlUploadProtocol
  = lens _varrlUploadProtocol
      (\ s a -> s{_varrlUploadProtocol = a})

-- | OAuth access token.
varrlAccessToken :: Lens' VideoAbuseReportReasonsList (Maybe Text)
varrlAccessToken
  = lens _varrlAccessToken
      (\ s a -> s{_varrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
varrlUploadType :: Lens' VideoAbuseReportReasonsList (Maybe Text)
varrlUploadType
  = lens _varrlUploadType
      (\ s a -> s{_varrlUploadType = a})

varrlHl :: Lens' VideoAbuseReportReasonsList Text
varrlHl = lens _varrlHl (\ s a -> s{_varrlHl = a})

-- | JSONP
varrlCallback :: Lens' VideoAbuseReportReasonsList (Maybe Text)
varrlCallback
  = lens _varrlCallback
      (\ s a -> s{_varrlCallback = a})

instance GoogleRequest VideoAbuseReportReasonsList
         where
        type Rs VideoAbuseReportReasonsList =
             VideoAbuseReportReasonListResponse
        type Scopes VideoAbuseReportReasonsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly"]
        requestClient VideoAbuseReportReasonsList'{..}
          = go _varrlPart _varrlXgafv _varrlUploadProtocol
              _varrlAccessToken
              _varrlUploadType
              (Just _varrlHl)
              _varrlCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy VideoAbuseReportReasonsListResource)
                      mempty
