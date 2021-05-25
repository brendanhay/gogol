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
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing event tag.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.eventTags.delete@.
module Network.Google.Resource.DFAReporting.EventTags.Delete
    (
    -- * REST Resource
      EventTagsDeleteResource

    -- * Creating a Request
    , eventTagsDelete
    , EventTagsDelete

    -- * Request Lenses
    , etdXgafv
    , etdUploadProtocol
    , etdAccessToken
    , etdUploadType
    , etdProFileId
    , etdId
    , etdCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.eventTags.delete@ method which the
-- 'EventTagsDelete' request conforms to.
type EventTagsDeleteResource =
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
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing event tag.
--
-- /See:/ 'eventTagsDelete' smart constructor.
data EventTagsDelete =
  EventTagsDelete'
    { _etdXgafv :: !(Maybe Xgafv)
    , _etdUploadProtocol :: !(Maybe Text)
    , _etdAccessToken :: !(Maybe Text)
    , _etdUploadType :: !(Maybe Text)
    , _etdProFileId :: !(Textual Int64)
    , _etdId :: !(Textual Int64)
    , _etdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventTagsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etdXgafv'
--
-- * 'etdUploadProtocol'
--
-- * 'etdAccessToken'
--
-- * 'etdUploadType'
--
-- * 'etdProFileId'
--
-- * 'etdId'
--
-- * 'etdCallback'
eventTagsDelete
    :: Int64 -- ^ 'etdProFileId'
    -> Int64 -- ^ 'etdId'
    -> EventTagsDelete
eventTagsDelete pEtdProFileId_ pEtdId_ =
  EventTagsDelete'
    { _etdXgafv = Nothing
    , _etdUploadProtocol = Nothing
    , _etdAccessToken = Nothing
    , _etdUploadType = Nothing
    , _etdProFileId = _Coerce # pEtdProFileId_
    , _etdId = _Coerce # pEtdId_
    , _etdCallback = Nothing
    }


-- | V1 error format.
etdXgafv :: Lens' EventTagsDelete (Maybe Xgafv)
etdXgafv = lens _etdXgafv (\ s a -> s{_etdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etdUploadProtocol :: Lens' EventTagsDelete (Maybe Text)
etdUploadProtocol
  = lens _etdUploadProtocol
      (\ s a -> s{_etdUploadProtocol = a})

-- | OAuth access token.
etdAccessToken :: Lens' EventTagsDelete (Maybe Text)
etdAccessToken
  = lens _etdAccessToken
      (\ s a -> s{_etdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etdUploadType :: Lens' EventTagsDelete (Maybe Text)
etdUploadType
  = lens _etdUploadType
      (\ s a -> s{_etdUploadType = a})

-- | User profile ID associated with this request.
etdProFileId :: Lens' EventTagsDelete Int64
etdProFileId
  = lens _etdProFileId (\ s a -> s{_etdProFileId = a})
      . _Coerce

-- | Event tag ID.
etdId :: Lens' EventTagsDelete Int64
etdId
  = lens _etdId (\ s a -> s{_etdId = a}) . _Coerce

-- | JSONP
etdCallback :: Lens' EventTagsDelete (Maybe Text)
etdCallback
  = lens _etdCallback (\ s a -> s{_etdCallback = a})

instance GoogleRequest EventTagsDelete where
        type Rs EventTagsDelete = ()
        type Scopes EventTagsDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient EventTagsDelete'{..}
          = go _etdProFileId _etdId _etdXgafv
              _etdUploadProtocol
              _etdAccessToken
              _etdUploadType
              _etdCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy EventTagsDeleteResource)
                      mempty
