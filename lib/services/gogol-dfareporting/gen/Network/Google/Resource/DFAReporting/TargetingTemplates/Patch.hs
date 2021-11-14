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
-- Module      : Network.Google.Resource.DFAReporting.TargetingTemplates.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing targeting template. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.targetingTemplates.patch@.
module Network.Google.Resource.DFAReporting.TargetingTemplates.Patch
    (
    -- * REST Resource
      TargetingTemplatesPatchResource

    -- * Creating a Request
    , targetingTemplatesPatch
    , TargetingTemplatesPatch

    -- * Request Lenses
    , ttpXgafv
    , ttpUploadProtocol
    , ttpAccessToken
    , ttpUploadType
    , ttpProFileId
    , ttpPayload
    , ttpId
    , ttpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.targetingTemplates.patch@ method which the
-- 'TargetingTemplatesPatch' request conforms to.
type TargetingTemplatesPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "targetingTemplates" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] TargetingTemplate :>
                               Patch '[JSON] TargetingTemplate

-- | Updates an existing targeting template. This method supports patch
-- semantics.
--
-- /See:/ 'targetingTemplatesPatch' smart constructor.
data TargetingTemplatesPatch =
  TargetingTemplatesPatch'
    { _ttpXgafv :: !(Maybe Xgafv)
    , _ttpUploadProtocol :: !(Maybe Text)
    , _ttpAccessToken :: !(Maybe Text)
    , _ttpUploadType :: !(Maybe Text)
    , _ttpProFileId :: !(Textual Int64)
    , _ttpPayload :: !TargetingTemplate
    , _ttpId :: !(Textual Int64)
    , _ttpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetingTemplatesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttpXgafv'
--
-- * 'ttpUploadProtocol'
--
-- * 'ttpAccessToken'
--
-- * 'ttpUploadType'
--
-- * 'ttpProFileId'
--
-- * 'ttpPayload'
--
-- * 'ttpId'
--
-- * 'ttpCallback'
targetingTemplatesPatch
    :: Int64 -- ^ 'ttpProFileId'
    -> TargetingTemplate -- ^ 'ttpPayload'
    -> Int64 -- ^ 'ttpId'
    -> TargetingTemplatesPatch
targetingTemplatesPatch pTtpProFileId_ pTtpPayload_ pTtpId_ =
  TargetingTemplatesPatch'
    { _ttpXgafv = Nothing
    , _ttpUploadProtocol = Nothing
    , _ttpAccessToken = Nothing
    , _ttpUploadType = Nothing
    , _ttpProFileId = _Coerce # pTtpProFileId_
    , _ttpPayload = pTtpPayload_
    , _ttpId = _Coerce # pTtpId_
    , _ttpCallback = Nothing
    }


-- | V1 error format.
ttpXgafv :: Lens' TargetingTemplatesPatch (Maybe Xgafv)
ttpXgafv = lens _ttpXgafv (\ s a -> s{_ttpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ttpUploadProtocol :: Lens' TargetingTemplatesPatch (Maybe Text)
ttpUploadProtocol
  = lens _ttpUploadProtocol
      (\ s a -> s{_ttpUploadProtocol = a})

-- | OAuth access token.
ttpAccessToken :: Lens' TargetingTemplatesPatch (Maybe Text)
ttpAccessToken
  = lens _ttpAccessToken
      (\ s a -> s{_ttpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ttpUploadType :: Lens' TargetingTemplatesPatch (Maybe Text)
ttpUploadType
  = lens _ttpUploadType
      (\ s a -> s{_ttpUploadType = a})

-- | User profile ID associated with this request.
ttpProFileId :: Lens' TargetingTemplatesPatch Int64
ttpProFileId
  = lens _ttpProFileId (\ s a -> s{_ttpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
ttpPayload :: Lens' TargetingTemplatesPatch TargetingTemplate
ttpPayload
  = lens _ttpPayload (\ s a -> s{_ttpPayload = a})

-- | TargetingTemplate ID.
ttpId :: Lens' TargetingTemplatesPatch Int64
ttpId
  = lens _ttpId (\ s a -> s{_ttpId = a}) . _Coerce

-- | JSONP
ttpCallback :: Lens' TargetingTemplatesPatch (Maybe Text)
ttpCallback
  = lens _ttpCallback (\ s a -> s{_ttpCallback = a})

instance GoogleRequest TargetingTemplatesPatch where
        type Rs TargetingTemplatesPatch = TargetingTemplate
        type Scopes TargetingTemplatesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient TargetingTemplatesPatch'{..}
          = go _ttpProFileId (Just _ttpId) _ttpXgafv
              _ttpUploadProtocol
              _ttpAccessToken
              _ttpUploadType
              _ttpCallback
              (Just AltJSON)
              _ttpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetingTemplatesPatchResource)
                      mempty
