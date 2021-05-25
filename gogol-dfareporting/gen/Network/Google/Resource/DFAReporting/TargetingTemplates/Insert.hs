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
-- Module      : Network.Google.Resource.DFAReporting.TargetingTemplates.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new targeting template.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.targetingTemplates.insert@.
module Network.Google.Resource.DFAReporting.TargetingTemplates.Insert
    (
    -- * REST Resource
      TargetingTemplatesInsertResource

    -- * Creating a Request
    , targetingTemplatesInsert
    , TargetingTemplatesInsert

    -- * Request Lenses
    , ttiXgafv
    , ttiUploadProtocol
    , ttiAccessToken
    , ttiUploadType
    , ttiProFileId
    , ttiPayload
    , ttiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.targetingTemplates.insert@ method which the
-- 'TargetingTemplatesInsert' request conforms to.
type TargetingTemplatesInsertResource =
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
                             Post '[JSON] TargetingTemplate

-- | Inserts a new targeting template.
--
-- /See:/ 'targetingTemplatesInsert' smart constructor.
data TargetingTemplatesInsert =
  TargetingTemplatesInsert'
    { _ttiXgafv :: !(Maybe Xgafv)
    , _ttiUploadProtocol :: !(Maybe Text)
    , _ttiAccessToken :: !(Maybe Text)
    , _ttiUploadType :: !(Maybe Text)
    , _ttiProFileId :: !(Textual Int64)
    , _ttiPayload :: !TargetingTemplate
    , _ttiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetingTemplatesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttiXgafv'
--
-- * 'ttiUploadProtocol'
--
-- * 'ttiAccessToken'
--
-- * 'ttiUploadType'
--
-- * 'ttiProFileId'
--
-- * 'ttiPayload'
--
-- * 'ttiCallback'
targetingTemplatesInsert
    :: Int64 -- ^ 'ttiProFileId'
    -> TargetingTemplate -- ^ 'ttiPayload'
    -> TargetingTemplatesInsert
targetingTemplatesInsert pTtiProFileId_ pTtiPayload_ =
  TargetingTemplatesInsert'
    { _ttiXgafv = Nothing
    , _ttiUploadProtocol = Nothing
    , _ttiAccessToken = Nothing
    , _ttiUploadType = Nothing
    , _ttiProFileId = _Coerce # pTtiProFileId_
    , _ttiPayload = pTtiPayload_
    , _ttiCallback = Nothing
    }


-- | V1 error format.
ttiXgafv :: Lens' TargetingTemplatesInsert (Maybe Xgafv)
ttiXgafv = lens _ttiXgafv (\ s a -> s{_ttiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ttiUploadProtocol :: Lens' TargetingTemplatesInsert (Maybe Text)
ttiUploadProtocol
  = lens _ttiUploadProtocol
      (\ s a -> s{_ttiUploadProtocol = a})

-- | OAuth access token.
ttiAccessToken :: Lens' TargetingTemplatesInsert (Maybe Text)
ttiAccessToken
  = lens _ttiAccessToken
      (\ s a -> s{_ttiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ttiUploadType :: Lens' TargetingTemplatesInsert (Maybe Text)
ttiUploadType
  = lens _ttiUploadType
      (\ s a -> s{_ttiUploadType = a})

-- | User profile ID associated with this request.
ttiProFileId :: Lens' TargetingTemplatesInsert Int64
ttiProFileId
  = lens _ttiProFileId (\ s a -> s{_ttiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
ttiPayload :: Lens' TargetingTemplatesInsert TargetingTemplate
ttiPayload
  = lens _ttiPayload (\ s a -> s{_ttiPayload = a})

-- | JSONP
ttiCallback :: Lens' TargetingTemplatesInsert (Maybe Text)
ttiCallback
  = lens _ttiCallback (\ s a -> s{_ttiCallback = a})

instance GoogleRequest TargetingTemplatesInsert where
        type Rs TargetingTemplatesInsert = TargetingTemplate
        type Scopes TargetingTemplatesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient TargetingTemplatesInsert'{..}
          = go _ttiProFileId _ttiXgafv _ttiUploadProtocol
              _ttiAccessToken
              _ttiUploadType
              _ttiCallback
              (Just AltJSON)
              _ttiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetingTemplatesInsertResource)
                      mempty
