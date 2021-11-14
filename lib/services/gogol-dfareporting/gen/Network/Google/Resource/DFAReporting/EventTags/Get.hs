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
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one event tag by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.eventTags.get@.
module Network.Google.Resource.DFAReporting.EventTags.Get
    (
    -- * REST Resource
      EventTagsGetResource

    -- * Creating a Request
    , eventTagsGet
    , EventTagsGet

    -- * Request Lenses
    , etgXgafv
    , etgUploadProtocol
    , etgAccessToken
    , etgUploadType
    , etgProFileId
    , etgId
    , etgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.eventTags.get@ method which the
-- 'EventTagsGet' request conforms to.
type EventTagsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "eventTags" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] EventTag

-- | Gets one event tag by ID.
--
-- /See:/ 'eventTagsGet' smart constructor.
data EventTagsGet =
  EventTagsGet'
    { _etgXgafv :: !(Maybe Xgafv)
    , _etgUploadProtocol :: !(Maybe Text)
    , _etgAccessToken :: !(Maybe Text)
    , _etgUploadType :: !(Maybe Text)
    , _etgProFileId :: !(Textual Int64)
    , _etgId :: !(Textual Int64)
    , _etgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventTagsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etgXgafv'
--
-- * 'etgUploadProtocol'
--
-- * 'etgAccessToken'
--
-- * 'etgUploadType'
--
-- * 'etgProFileId'
--
-- * 'etgId'
--
-- * 'etgCallback'
eventTagsGet
    :: Int64 -- ^ 'etgProFileId'
    -> Int64 -- ^ 'etgId'
    -> EventTagsGet
eventTagsGet pEtgProFileId_ pEtgId_ =
  EventTagsGet'
    { _etgXgafv = Nothing
    , _etgUploadProtocol = Nothing
    , _etgAccessToken = Nothing
    , _etgUploadType = Nothing
    , _etgProFileId = _Coerce # pEtgProFileId_
    , _etgId = _Coerce # pEtgId_
    , _etgCallback = Nothing
    }


-- | V1 error format.
etgXgafv :: Lens' EventTagsGet (Maybe Xgafv)
etgXgafv = lens _etgXgafv (\ s a -> s{_etgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etgUploadProtocol :: Lens' EventTagsGet (Maybe Text)
etgUploadProtocol
  = lens _etgUploadProtocol
      (\ s a -> s{_etgUploadProtocol = a})

-- | OAuth access token.
etgAccessToken :: Lens' EventTagsGet (Maybe Text)
etgAccessToken
  = lens _etgAccessToken
      (\ s a -> s{_etgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etgUploadType :: Lens' EventTagsGet (Maybe Text)
etgUploadType
  = lens _etgUploadType
      (\ s a -> s{_etgUploadType = a})

-- | User profile ID associated with this request.
etgProFileId :: Lens' EventTagsGet Int64
etgProFileId
  = lens _etgProFileId (\ s a -> s{_etgProFileId = a})
      . _Coerce

-- | Event tag ID.
etgId :: Lens' EventTagsGet Int64
etgId
  = lens _etgId (\ s a -> s{_etgId = a}) . _Coerce

-- | JSONP
etgCallback :: Lens' EventTagsGet (Maybe Text)
etgCallback
  = lens _etgCallback (\ s a -> s{_etgCallback = a})

instance GoogleRequest EventTagsGet where
        type Rs EventTagsGet = EventTag
        type Scopes EventTagsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient EventTagsGet'{..}
          = go _etgProFileId _etgId _etgXgafv
              _etgUploadProtocol
              _etgAccessToken
              _etgUploadType
              _etgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy EventTagsGetResource)
                      mempty
