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
-- Module      : Network.Google.Resource.DFAReporting.TargetingTemplates.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing targeting template.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.targetingTemplates.update@.
module Network.Google.Resource.DFAReporting.TargetingTemplates.Update
    (
    -- * REST Resource
      TargetingTemplatesUpdateResource

    -- * Creating a Request
    , targetingTemplatesUpdate
    , TargetingTemplatesUpdate

    -- * Request Lenses
    , ttuXgafv
    , ttuUploadProtocol
    , ttuAccessToken
    , ttuUploadType
    , ttuProFileId
    , ttuPayload
    , ttuCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.targetingTemplates.update@ method which the
-- 'TargetingTemplatesUpdate' request conforms to.
type TargetingTemplatesUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "targetingTemplates" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TargetingTemplate :>
                             Put '[JSON] TargetingTemplate

-- | Updates an existing targeting template.
--
-- /See:/ 'targetingTemplatesUpdate' smart constructor.
data TargetingTemplatesUpdate =
  TargetingTemplatesUpdate'
    { _ttuXgafv :: !(Maybe Xgafv)
    , _ttuUploadProtocol :: !(Maybe Text)
    , _ttuAccessToken :: !(Maybe Text)
    , _ttuUploadType :: !(Maybe Text)
    , _ttuProFileId :: !(Textual Int64)
    , _ttuPayload :: !TargetingTemplate
    , _ttuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetingTemplatesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttuXgafv'
--
-- * 'ttuUploadProtocol'
--
-- * 'ttuAccessToken'
--
-- * 'ttuUploadType'
--
-- * 'ttuProFileId'
--
-- * 'ttuPayload'
--
-- * 'ttuCallback'
targetingTemplatesUpdate
    :: Int64 -- ^ 'ttuProFileId'
    -> TargetingTemplate -- ^ 'ttuPayload'
    -> TargetingTemplatesUpdate
targetingTemplatesUpdate pTtuProFileId_ pTtuPayload_ =
  TargetingTemplatesUpdate'
    { _ttuXgafv = Nothing
    , _ttuUploadProtocol = Nothing
    , _ttuAccessToken = Nothing
    , _ttuUploadType = Nothing
    , _ttuProFileId = _Coerce # pTtuProFileId_
    , _ttuPayload = pTtuPayload_
    , _ttuCallback = Nothing
    }


-- | V1 error format.
ttuXgafv :: Lens' TargetingTemplatesUpdate (Maybe Xgafv)
ttuXgafv = lens _ttuXgafv (\ s a -> s{_ttuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ttuUploadProtocol :: Lens' TargetingTemplatesUpdate (Maybe Text)
ttuUploadProtocol
  = lens _ttuUploadProtocol
      (\ s a -> s{_ttuUploadProtocol = a})

-- | OAuth access token.
ttuAccessToken :: Lens' TargetingTemplatesUpdate (Maybe Text)
ttuAccessToken
  = lens _ttuAccessToken
      (\ s a -> s{_ttuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ttuUploadType :: Lens' TargetingTemplatesUpdate (Maybe Text)
ttuUploadType
  = lens _ttuUploadType
      (\ s a -> s{_ttuUploadType = a})

-- | User profile ID associated with this request.
ttuProFileId :: Lens' TargetingTemplatesUpdate Int64
ttuProFileId
  = lens _ttuProFileId (\ s a -> s{_ttuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
ttuPayload :: Lens' TargetingTemplatesUpdate TargetingTemplate
ttuPayload
  = lens _ttuPayload (\ s a -> s{_ttuPayload = a})

-- | JSONP
ttuCallback :: Lens' TargetingTemplatesUpdate (Maybe Text)
ttuCallback
  = lens _ttuCallback (\ s a -> s{_ttuCallback = a})

instance GoogleRequest TargetingTemplatesUpdate where
        type Rs TargetingTemplatesUpdate = TargetingTemplate
        type Scopes TargetingTemplatesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient TargetingTemplatesUpdate'{..}
          = go _ttuProFileId _ttuXgafv _ttuUploadProtocol
              _ttuAccessToken
              _ttuUploadType
              _ttuCallback
              (Just AltJSON)
              _ttuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetingTemplatesUpdateResource)
                      mempty
