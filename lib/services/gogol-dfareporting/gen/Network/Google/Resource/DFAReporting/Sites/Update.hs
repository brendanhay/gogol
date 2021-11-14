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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing site.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.sites.update@.
module Network.Google.Resource.DFAReporting.Sites.Update
    (
    -- * REST Resource
      SitesUpdateResource

    -- * Creating a Request
    , sitesUpdate
    , SitesUpdate

    -- * Request Lenses
    , suXgafv
    , suUploadProtocol
    , suAccessToken
    , suUploadType
    , suProFileId
    , suPayload
    , suCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.sites.update@ method which the
-- 'SitesUpdate' request conforms to.
type SitesUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "sites" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Site :> Put '[JSON] Site

-- | Updates an existing site.
--
-- /See:/ 'sitesUpdate' smart constructor.
data SitesUpdate =
  SitesUpdate'
    { _suXgafv :: !(Maybe Xgafv)
    , _suUploadProtocol :: !(Maybe Text)
    , _suAccessToken :: !(Maybe Text)
    , _suUploadType :: !(Maybe Text)
    , _suProFileId :: !(Textual Int64)
    , _suPayload :: !Site
    , _suCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suXgafv'
--
-- * 'suUploadProtocol'
--
-- * 'suAccessToken'
--
-- * 'suUploadType'
--
-- * 'suProFileId'
--
-- * 'suPayload'
--
-- * 'suCallback'
sitesUpdate
    :: Int64 -- ^ 'suProFileId'
    -> Site -- ^ 'suPayload'
    -> SitesUpdate
sitesUpdate pSuProFileId_ pSuPayload_ =
  SitesUpdate'
    { _suXgafv = Nothing
    , _suUploadProtocol = Nothing
    , _suAccessToken = Nothing
    , _suUploadType = Nothing
    , _suProFileId = _Coerce # pSuProFileId_
    , _suPayload = pSuPayload_
    , _suCallback = Nothing
    }


-- | V1 error format.
suXgafv :: Lens' SitesUpdate (Maybe Xgafv)
suXgafv = lens _suXgafv (\ s a -> s{_suXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
suUploadProtocol :: Lens' SitesUpdate (Maybe Text)
suUploadProtocol
  = lens _suUploadProtocol
      (\ s a -> s{_suUploadProtocol = a})

-- | OAuth access token.
suAccessToken :: Lens' SitesUpdate (Maybe Text)
suAccessToken
  = lens _suAccessToken
      (\ s a -> s{_suAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
suUploadType :: Lens' SitesUpdate (Maybe Text)
suUploadType
  = lens _suUploadType (\ s a -> s{_suUploadType = a})

-- | User profile ID associated with this request.
suProFileId :: Lens' SitesUpdate Int64
suProFileId
  = lens _suProFileId (\ s a -> s{_suProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
suPayload :: Lens' SitesUpdate Site
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | JSONP
suCallback :: Lens' SitesUpdate (Maybe Text)
suCallback
  = lens _suCallback (\ s a -> s{_suCallback = a})

instance GoogleRequest SitesUpdate where
        type Rs SitesUpdate = Site
        type Scopes SitesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SitesUpdate'{..}
          = go _suProFileId _suXgafv _suUploadProtocol
              _suAccessToken
              _suUploadType
              _suCallback
              (Just AltJSON)
              _suPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SitesUpdateResource)
                      mempty
