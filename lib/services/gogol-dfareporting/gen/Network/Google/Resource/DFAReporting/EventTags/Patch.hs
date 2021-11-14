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
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing event tag. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.eventTags.patch@.
module Network.Google.Resource.DFAReporting.EventTags.Patch
    (
    -- * REST Resource
      EventTagsPatchResource

    -- * Creating a Request
    , eventTagsPatch
    , EventTagsPatch

    -- * Request Lenses
    , etpXgafv
    , etpUploadProtocol
    , etpAccessToken
    , etpUploadType
    , etpProFileId
    , etpPayload
    , etpId
    , etpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.eventTags.patch@ method which the
-- 'EventTagsPatch' request conforms to.
type EventTagsPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "eventTags" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] EventTag :> Patch '[JSON] EventTag

-- | Updates an existing event tag. This method supports patch semantics.
--
-- /See:/ 'eventTagsPatch' smart constructor.
data EventTagsPatch =
  EventTagsPatch'
    { _etpXgafv :: !(Maybe Xgafv)
    , _etpUploadProtocol :: !(Maybe Text)
    , _etpAccessToken :: !(Maybe Text)
    , _etpUploadType :: !(Maybe Text)
    , _etpProFileId :: !(Textual Int64)
    , _etpPayload :: !EventTag
    , _etpId :: !(Textual Int64)
    , _etpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventTagsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etpXgafv'
--
-- * 'etpUploadProtocol'
--
-- * 'etpAccessToken'
--
-- * 'etpUploadType'
--
-- * 'etpProFileId'
--
-- * 'etpPayload'
--
-- * 'etpId'
--
-- * 'etpCallback'
eventTagsPatch
    :: Int64 -- ^ 'etpProFileId'
    -> EventTag -- ^ 'etpPayload'
    -> Int64 -- ^ 'etpId'
    -> EventTagsPatch
eventTagsPatch pEtpProFileId_ pEtpPayload_ pEtpId_ =
  EventTagsPatch'
    { _etpXgafv = Nothing
    , _etpUploadProtocol = Nothing
    , _etpAccessToken = Nothing
    , _etpUploadType = Nothing
    , _etpProFileId = _Coerce # pEtpProFileId_
    , _etpPayload = pEtpPayload_
    , _etpId = _Coerce # pEtpId_
    , _etpCallback = Nothing
    }


-- | V1 error format.
etpXgafv :: Lens' EventTagsPatch (Maybe Xgafv)
etpXgafv = lens _etpXgafv (\ s a -> s{_etpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etpUploadProtocol :: Lens' EventTagsPatch (Maybe Text)
etpUploadProtocol
  = lens _etpUploadProtocol
      (\ s a -> s{_etpUploadProtocol = a})

-- | OAuth access token.
etpAccessToken :: Lens' EventTagsPatch (Maybe Text)
etpAccessToken
  = lens _etpAccessToken
      (\ s a -> s{_etpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etpUploadType :: Lens' EventTagsPatch (Maybe Text)
etpUploadType
  = lens _etpUploadType
      (\ s a -> s{_etpUploadType = a})

-- | User profile ID associated with this request.
etpProFileId :: Lens' EventTagsPatch Int64
etpProFileId
  = lens _etpProFileId (\ s a -> s{_etpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
etpPayload :: Lens' EventTagsPatch EventTag
etpPayload
  = lens _etpPayload (\ s a -> s{_etpPayload = a})

-- | EventTag ID.
etpId :: Lens' EventTagsPatch Int64
etpId
  = lens _etpId (\ s a -> s{_etpId = a}) . _Coerce

-- | JSONP
etpCallback :: Lens' EventTagsPatch (Maybe Text)
etpCallback
  = lens _etpCallback (\ s a -> s{_etpCallback = a})

instance GoogleRequest EventTagsPatch where
        type Rs EventTagsPatch = EventTag
        type Scopes EventTagsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient EventTagsPatch'{..}
          = go _etpProFileId (Just _etpId) _etpXgafv
              _etpUploadProtocol
              _etpAccessToken
              _etpUploadType
              _etpCallback
              (Just AltJSON)
              _etpPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy EventTagsPatchResource)
                      mempty
