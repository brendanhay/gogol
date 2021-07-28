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
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new event tag.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.eventTags.insert@.
module Network.Google.Resource.DFAReporting.EventTags.Insert
    (
    -- * REST Resource
      EventTagsInsertResource

    -- * Creating a Request
    , eventTagsInsert
    , EventTagsInsert

    -- * Request Lenses
    , etiXgafv
    , etiUploadProtocol
    , etiAccessToken
    , etiUploadType
    , etiProFileId
    , etiPayload
    , etiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.eventTags.insert@ method which the
-- 'EventTagsInsert' request conforms to.
type EventTagsInsertResource =
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
                           ReqBody '[JSON] EventTag :> Post '[JSON] EventTag

-- | Inserts a new event tag.
--
-- /See:/ 'eventTagsInsert' smart constructor.
data EventTagsInsert =
  EventTagsInsert'
    { _etiXgafv :: !(Maybe Xgafv)
    , _etiUploadProtocol :: !(Maybe Text)
    , _etiAccessToken :: !(Maybe Text)
    , _etiUploadType :: !(Maybe Text)
    , _etiProFileId :: !(Textual Int64)
    , _etiPayload :: !EventTag
    , _etiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventTagsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etiXgafv'
--
-- * 'etiUploadProtocol'
--
-- * 'etiAccessToken'
--
-- * 'etiUploadType'
--
-- * 'etiProFileId'
--
-- * 'etiPayload'
--
-- * 'etiCallback'
eventTagsInsert
    :: Int64 -- ^ 'etiProFileId'
    -> EventTag -- ^ 'etiPayload'
    -> EventTagsInsert
eventTagsInsert pEtiProFileId_ pEtiPayload_ =
  EventTagsInsert'
    { _etiXgafv = Nothing
    , _etiUploadProtocol = Nothing
    , _etiAccessToken = Nothing
    , _etiUploadType = Nothing
    , _etiProFileId = _Coerce # pEtiProFileId_
    , _etiPayload = pEtiPayload_
    , _etiCallback = Nothing
    }


-- | V1 error format.
etiXgafv :: Lens' EventTagsInsert (Maybe Xgafv)
etiXgafv = lens _etiXgafv (\ s a -> s{_etiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etiUploadProtocol :: Lens' EventTagsInsert (Maybe Text)
etiUploadProtocol
  = lens _etiUploadProtocol
      (\ s a -> s{_etiUploadProtocol = a})

-- | OAuth access token.
etiAccessToken :: Lens' EventTagsInsert (Maybe Text)
etiAccessToken
  = lens _etiAccessToken
      (\ s a -> s{_etiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etiUploadType :: Lens' EventTagsInsert (Maybe Text)
etiUploadType
  = lens _etiUploadType
      (\ s a -> s{_etiUploadType = a})

-- | User profile ID associated with this request.
etiProFileId :: Lens' EventTagsInsert Int64
etiProFileId
  = lens _etiProFileId (\ s a -> s{_etiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
etiPayload :: Lens' EventTagsInsert EventTag
etiPayload
  = lens _etiPayload (\ s a -> s{_etiPayload = a})

-- | JSONP
etiCallback :: Lens' EventTagsInsert (Maybe Text)
etiCallback
  = lens _etiCallback (\ s a -> s{_etiCallback = a})

instance GoogleRequest EventTagsInsert where
        type Rs EventTagsInsert = EventTag
        type Scopes EventTagsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient EventTagsInsert'{..}
          = go _etiProFileId _etiXgafv _etiUploadProtocol
              _etiAccessToken
              _etiUploadType
              _etiCallback
              (Just AltJSON)
              _etiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy EventTagsInsertResource)
                      mempty
