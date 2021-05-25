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
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing event tag.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.eventTags.update@.
module Network.Google.Resource.DFAReporting.EventTags.Update
    (
    -- * REST Resource
      EventTagsUpdateResource

    -- * Creating a Request
    , eventTagsUpdate
    , EventTagsUpdate

    -- * Request Lenses
    , etuXgafv
    , etuUploadProtocol
    , etuAccessToken
    , etuUploadType
    , etuProFileId
    , etuPayload
    , etuCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.eventTags.update@ method which the
-- 'EventTagsUpdate' request conforms to.
type EventTagsUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "eventTags" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] EventTag :> Put '[JSON] EventTag

-- | Updates an existing event tag.
--
-- /See:/ 'eventTagsUpdate' smart constructor.
data EventTagsUpdate =
  EventTagsUpdate'
    { _etuXgafv :: !(Maybe Xgafv)
    , _etuUploadProtocol :: !(Maybe Text)
    , _etuAccessToken :: !(Maybe Text)
    , _etuUploadType :: !(Maybe Text)
    , _etuProFileId :: !(Textual Int64)
    , _etuPayload :: !EventTag
    , _etuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventTagsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etuXgafv'
--
-- * 'etuUploadProtocol'
--
-- * 'etuAccessToken'
--
-- * 'etuUploadType'
--
-- * 'etuProFileId'
--
-- * 'etuPayload'
--
-- * 'etuCallback'
eventTagsUpdate
    :: Int64 -- ^ 'etuProFileId'
    -> EventTag -- ^ 'etuPayload'
    -> EventTagsUpdate
eventTagsUpdate pEtuProFileId_ pEtuPayload_ =
  EventTagsUpdate'
    { _etuXgafv = Nothing
    , _etuUploadProtocol = Nothing
    , _etuAccessToken = Nothing
    , _etuUploadType = Nothing
    , _etuProFileId = _Coerce # pEtuProFileId_
    , _etuPayload = pEtuPayload_
    , _etuCallback = Nothing
    }


-- | V1 error format.
etuXgafv :: Lens' EventTagsUpdate (Maybe Xgafv)
etuXgafv = lens _etuXgafv (\ s a -> s{_etuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etuUploadProtocol :: Lens' EventTagsUpdate (Maybe Text)
etuUploadProtocol
  = lens _etuUploadProtocol
      (\ s a -> s{_etuUploadProtocol = a})

-- | OAuth access token.
etuAccessToken :: Lens' EventTagsUpdate (Maybe Text)
etuAccessToken
  = lens _etuAccessToken
      (\ s a -> s{_etuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etuUploadType :: Lens' EventTagsUpdate (Maybe Text)
etuUploadType
  = lens _etuUploadType
      (\ s a -> s{_etuUploadType = a})

-- | User profile ID associated with this request.
etuProFileId :: Lens' EventTagsUpdate Int64
etuProFileId
  = lens _etuProFileId (\ s a -> s{_etuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
etuPayload :: Lens' EventTagsUpdate EventTag
etuPayload
  = lens _etuPayload (\ s a -> s{_etuPayload = a})

-- | JSONP
etuCallback :: Lens' EventTagsUpdate (Maybe Text)
etuCallback
  = lens _etuCallback (\ s a -> s{_etuCallback = a})

instance GoogleRequest EventTagsUpdate where
        type Rs EventTagsUpdate = EventTag
        type Scopes EventTagsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient EventTagsUpdate'{..}
          = go _etuProFileId _etuXgafv _etuUploadProtocol
              _etuAccessToken
              _etuUploadType
              _etuCallback
              (Just AltJSON)
              _etuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy EventTagsUpdateResource)
                      mempty
