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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creatives.update@.
module Network.Google.Resource.DFAReporting.Creatives.Update
    (
    -- * REST Resource
      CreativesUpdateResource

    -- * Creating a Request
    , creativesUpdate
    , CreativesUpdate

    -- * Request Lenses
    , creXgafv
    , creUploadProtocol
    , creAccessToken
    , creUploadType
    , creProFileId
    , crePayload
    , creCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creatives.update@ method which the
-- 'CreativesUpdate' request conforms to.
type CreativesUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creatives" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Creative :> Put '[JSON] Creative

-- | Updates an existing creative.
--
-- /See:/ 'creativesUpdate' smart constructor.
data CreativesUpdate =
  CreativesUpdate'
    { _creXgafv :: !(Maybe Xgafv)
    , _creUploadProtocol :: !(Maybe Text)
    , _creAccessToken :: !(Maybe Text)
    , _creUploadType :: !(Maybe Text)
    , _creProFileId :: !(Textual Int64)
    , _crePayload :: !Creative
    , _creCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creXgafv'
--
-- * 'creUploadProtocol'
--
-- * 'creAccessToken'
--
-- * 'creUploadType'
--
-- * 'creProFileId'
--
-- * 'crePayload'
--
-- * 'creCallback'
creativesUpdate
    :: Int64 -- ^ 'creProFileId'
    -> Creative -- ^ 'crePayload'
    -> CreativesUpdate
creativesUpdate pCreProFileId_ pCrePayload_ =
  CreativesUpdate'
    { _creXgafv = Nothing
    , _creUploadProtocol = Nothing
    , _creAccessToken = Nothing
    , _creUploadType = Nothing
    , _creProFileId = _Coerce # pCreProFileId_
    , _crePayload = pCrePayload_
    , _creCallback = Nothing
    }


-- | V1 error format.
creXgafv :: Lens' CreativesUpdate (Maybe Xgafv)
creXgafv = lens _creXgafv (\ s a -> s{_creXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
creUploadProtocol :: Lens' CreativesUpdate (Maybe Text)
creUploadProtocol
  = lens _creUploadProtocol
      (\ s a -> s{_creUploadProtocol = a})

-- | OAuth access token.
creAccessToken :: Lens' CreativesUpdate (Maybe Text)
creAccessToken
  = lens _creAccessToken
      (\ s a -> s{_creAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
creUploadType :: Lens' CreativesUpdate (Maybe Text)
creUploadType
  = lens _creUploadType
      (\ s a -> s{_creUploadType = a})

-- | User profile ID associated with this request.
creProFileId :: Lens' CreativesUpdate Int64
creProFileId
  = lens _creProFileId (\ s a -> s{_creProFileId = a})
      . _Coerce

-- | Multipart request metadata.
crePayload :: Lens' CreativesUpdate Creative
crePayload
  = lens _crePayload (\ s a -> s{_crePayload = a})

-- | JSONP
creCallback :: Lens' CreativesUpdate (Maybe Text)
creCallback
  = lens _creCallback (\ s a -> s{_creCallback = a})

instance GoogleRequest CreativesUpdate where
        type Rs CreativesUpdate = Creative
        type Scopes CreativesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativesUpdate'{..}
          = go _creProFileId _creXgafv _creUploadProtocol
              _creAccessToken
              _creUploadType
              _creCallback
              (Just AltJSON)
              _crePayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativesUpdateResource)
                      mempty
