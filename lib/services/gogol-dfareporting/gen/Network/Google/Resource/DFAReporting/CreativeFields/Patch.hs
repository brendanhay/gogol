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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative field. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFields.patch@.
module Network.Google.Resource.DFAReporting.CreativeFields.Patch
    (
    -- * REST Resource
      CreativeFieldsPatchResource

    -- * Creating a Request
    , creativeFieldsPatch
    , CreativeFieldsPatch

    -- * Request Lenses
    , cfpXgafv
    , cfpUploadProtocol
    , cfpAccessToken
    , cfpUploadType
    , cfpProFileId
    , cfpPayload
    , cfpId
    , cfpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFields.patch@ method which the
-- 'CreativeFieldsPatch' request conforms to.
type CreativeFieldsPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeFields" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CreativeField :>
                               Patch '[JSON] CreativeField

-- | Updates an existing creative field. This method supports patch
-- semantics.
--
-- /See:/ 'creativeFieldsPatch' smart constructor.
data CreativeFieldsPatch =
  CreativeFieldsPatch'
    { _cfpXgafv :: !(Maybe Xgafv)
    , _cfpUploadProtocol :: !(Maybe Text)
    , _cfpAccessToken :: !(Maybe Text)
    , _cfpUploadType :: !(Maybe Text)
    , _cfpProFileId :: !(Textual Int64)
    , _cfpPayload :: !CreativeField
    , _cfpId :: !(Textual Int64)
    , _cfpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeFieldsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfpXgafv'
--
-- * 'cfpUploadProtocol'
--
-- * 'cfpAccessToken'
--
-- * 'cfpUploadType'
--
-- * 'cfpProFileId'
--
-- * 'cfpPayload'
--
-- * 'cfpId'
--
-- * 'cfpCallback'
creativeFieldsPatch
    :: Int64 -- ^ 'cfpProFileId'
    -> CreativeField -- ^ 'cfpPayload'
    -> Int64 -- ^ 'cfpId'
    -> CreativeFieldsPatch
creativeFieldsPatch pCfpProFileId_ pCfpPayload_ pCfpId_ =
  CreativeFieldsPatch'
    { _cfpXgafv = Nothing
    , _cfpUploadProtocol = Nothing
    , _cfpAccessToken = Nothing
    , _cfpUploadType = Nothing
    , _cfpProFileId = _Coerce # pCfpProFileId_
    , _cfpPayload = pCfpPayload_
    , _cfpId = _Coerce # pCfpId_
    , _cfpCallback = Nothing
    }


-- | V1 error format.
cfpXgafv :: Lens' CreativeFieldsPatch (Maybe Xgafv)
cfpXgafv = lens _cfpXgafv (\ s a -> s{_cfpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cfpUploadProtocol :: Lens' CreativeFieldsPatch (Maybe Text)
cfpUploadProtocol
  = lens _cfpUploadProtocol
      (\ s a -> s{_cfpUploadProtocol = a})

-- | OAuth access token.
cfpAccessToken :: Lens' CreativeFieldsPatch (Maybe Text)
cfpAccessToken
  = lens _cfpAccessToken
      (\ s a -> s{_cfpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cfpUploadType :: Lens' CreativeFieldsPatch (Maybe Text)
cfpUploadType
  = lens _cfpUploadType
      (\ s a -> s{_cfpUploadType = a})

-- | User profile ID associated with this request.
cfpProFileId :: Lens' CreativeFieldsPatch Int64
cfpProFileId
  = lens _cfpProFileId (\ s a -> s{_cfpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cfpPayload :: Lens' CreativeFieldsPatch CreativeField
cfpPayload
  = lens _cfpPayload (\ s a -> s{_cfpPayload = a})

-- | CreativeField ID.
cfpId :: Lens' CreativeFieldsPatch Int64
cfpId
  = lens _cfpId (\ s a -> s{_cfpId = a}) . _Coerce

-- | JSONP
cfpCallback :: Lens' CreativeFieldsPatch (Maybe Text)
cfpCallback
  = lens _cfpCallback (\ s a -> s{_cfpCallback = a})

instance GoogleRequest CreativeFieldsPatch where
        type Rs CreativeFieldsPatch = CreativeField
        type Scopes CreativeFieldsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeFieldsPatch'{..}
          = go _cfpProFileId (Just _cfpId) _cfpXgafv
              _cfpUploadProtocol
              _cfpAccessToken
              _cfpUploadType
              _cfpCallback
              (Just AltJSON)
              _cfpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldsPatchResource)
                      mempty
