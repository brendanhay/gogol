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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creatives.patch@.
module Network.Google.Resource.DFAReporting.Creatives.Patch
    (
    -- * REST Resource
      CreativesPatchResource

    -- * Creating a Request
    , creativesPatch
    , CreativesPatch

    -- * Request Lenses
    , cppXgafv
    , cppUploadProtocol
    , cppAccessToken
    , cppUploadType
    , cppProFileId
    , cppPayload
    , cppId
    , cppCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creatives.patch@ method which the
-- 'CreativesPatch' request conforms to.
type CreativesPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creatives" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Creative :> Patch '[JSON] Creative

-- | Updates an existing creative. This method supports patch semantics.
--
-- /See:/ 'creativesPatch' smart constructor.
data CreativesPatch =
  CreativesPatch'
    { _cppXgafv :: !(Maybe Xgafv)
    , _cppUploadProtocol :: !(Maybe Text)
    , _cppAccessToken :: !(Maybe Text)
    , _cppUploadType :: !(Maybe Text)
    , _cppProFileId :: !(Textual Int64)
    , _cppPayload :: !Creative
    , _cppId :: !(Textual Int64)
    , _cppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cppXgafv'
--
-- * 'cppUploadProtocol'
--
-- * 'cppAccessToken'
--
-- * 'cppUploadType'
--
-- * 'cppProFileId'
--
-- * 'cppPayload'
--
-- * 'cppId'
--
-- * 'cppCallback'
creativesPatch
    :: Int64 -- ^ 'cppProFileId'
    -> Creative -- ^ 'cppPayload'
    -> Int64 -- ^ 'cppId'
    -> CreativesPatch
creativesPatch pCppProFileId_ pCppPayload_ pCppId_ =
  CreativesPatch'
    { _cppXgafv = Nothing
    , _cppUploadProtocol = Nothing
    , _cppAccessToken = Nothing
    , _cppUploadType = Nothing
    , _cppProFileId = _Coerce # pCppProFileId_
    , _cppPayload = pCppPayload_
    , _cppId = _Coerce # pCppId_
    , _cppCallback = Nothing
    }


-- | V1 error format.
cppXgafv :: Lens' CreativesPatch (Maybe Xgafv)
cppXgafv = lens _cppXgafv (\ s a -> s{_cppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cppUploadProtocol :: Lens' CreativesPatch (Maybe Text)
cppUploadProtocol
  = lens _cppUploadProtocol
      (\ s a -> s{_cppUploadProtocol = a})

-- | OAuth access token.
cppAccessToken :: Lens' CreativesPatch (Maybe Text)
cppAccessToken
  = lens _cppAccessToken
      (\ s a -> s{_cppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cppUploadType :: Lens' CreativesPatch (Maybe Text)
cppUploadType
  = lens _cppUploadType
      (\ s a -> s{_cppUploadType = a})

-- | User profile ID associated with this request.
cppProFileId :: Lens' CreativesPatch Int64
cppProFileId
  = lens _cppProFileId (\ s a -> s{_cppProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cppPayload :: Lens' CreativesPatch Creative
cppPayload
  = lens _cppPayload (\ s a -> s{_cppPayload = a})

-- | Creative ID.
cppId :: Lens' CreativesPatch Int64
cppId
  = lens _cppId (\ s a -> s{_cppId = a}) . _Coerce

-- | JSONP
cppCallback :: Lens' CreativesPatch (Maybe Text)
cppCallback
  = lens _cppCallback (\ s a -> s{_cppCallback = a})

instance GoogleRequest CreativesPatch where
        type Rs CreativesPatch = Creative
        type Scopes CreativesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativesPatch'{..}
          = go _cppProFileId (Just _cppId) _cppXgafv
              _cppUploadProtocol
              _cppAccessToken
              _cppUploadType
              _cppCallback
              (Just AltJSON)
              _cppPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CreativesPatchResource)
                      mempty
