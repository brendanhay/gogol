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
-- Module      : Network.Google.Resource.People.People.BatchUpdateContacts
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a batch of contacts and return a map of resource names to
-- PersonResponses for the updated contacts. Limited to 10 parallel
-- requests per user.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.batchUpdateContacts@.
module Network.Google.Resource.People.People.BatchUpdateContacts
    (
    -- * REST Resource
      PeopleBatchUpdateContactsResource

    -- * Creating a Request
    , peopleBatchUpdateContacts
    , PeopleBatchUpdateContacts

    -- * Request Lenses
    , pbucXgafv
    , pbucUploadProtocol
    , pbucAccessToken
    , pbucUploadType
    , pbucPayload
    , pbucCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.people.batchUpdateContacts@ method which the
-- 'PeopleBatchUpdateContacts' request conforms to.
type PeopleBatchUpdateContactsResource =
     "v1" :>
       "people:batchUpdateContacts" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BatchUpdateContactsRequest :>
                       Post '[JSON] BatchUpdateContactsResponse

-- | Update a batch of contacts and return a map of resource names to
-- PersonResponses for the updated contacts. Limited to 10 parallel
-- requests per user.
--
-- /See:/ 'peopleBatchUpdateContacts' smart constructor.
data PeopleBatchUpdateContacts =
  PeopleBatchUpdateContacts'
    { _pbucXgafv :: !(Maybe Xgafv)
    , _pbucUploadProtocol :: !(Maybe Text)
    , _pbucAccessToken :: !(Maybe Text)
    , _pbucUploadType :: !(Maybe Text)
    , _pbucPayload :: !BatchUpdateContactsRequest
    , _pbucCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleBatchUpdateContacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbucXgafv'
--
-- * 'pbucUploadProtocol'
--
-- * 'pbucAccessToken'
--
-- * 'pbucUploadType'
--
-- * 'pbucPayload'
--
-- * 'pbucCallback'
peopleBatchUpdateContacts
    :: BatchUpdateContactsRequest -- ^ 'pbucPayload'
    -> PeopleBatchUpdateContacts
peopleBatchUpdateContacts pPbucPayload_ =
  PeopleBatchUpdateContacts'
    { _pbucXgafv = Nothing
    , _pbucUploadProtocol = Nothing
    , _pbucAccessToken = Nothing
    , _pbucUploadType = Nothing
    , _pbucPayload = pPbucPayload_
    , _pbucCallback = Nothing
    }


-- | V1 error format.
pbucXgafv :: Lens' PeopleBatchUpdateContacts (Maybe Xgafv)
pbucXgafv
  = lens _pbucXgafv (\ s a -> s{_pbucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbucUploadProtocol :: Lens' PeopleBatchUpdateContacts (Maybe Text)
pbucUploadProtocol
  = lens _pbucUploadProtocol
      (\ s a -> s{_pbucUploadProtocol = a})

-- | OAuth access token.
pbucAccessToken :: Lens' PeopleBatchUpdateContacts (Maybe Text)
pbucAccessToken
  = lens _pbucAccessToken
      (\ s a -> s{_pbucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbucUploadType :: Lens' PeopleBatchUpdateContacts (Maybe Text)
pbucUploadType
  = lens _pbucUploadType
      (\ s a -> s{_pbucUploadType = a})

-- | Multipart request metadata.
pbucPayload :: Lens' PeopleBatchUpdateContacts BatchUpdateContactsRequest
pbucPayload
  = lens _pbucPayload (\ s a -> s{_pbucPayload = a})

-- | JSONP
pbucCallback :: Lens' PeopleBatchUpdateContacts (Maybe Text)
pbucCallback
  = lens _pbucCallback (\ s a -> s{_pbucCallback = a})

instance GoogleRequest PeopleBatchUpdateContacts
         where
        type Rs PeopleBatchUpdateContacts =
             BatchUpdateContactsResponse
        type Scopes PeopleBatchUpdateContacts =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient PeopleBatchUpdateContacts'{..}
          = go _pbucXgafv _pbucUploadProtocol _pbucAccessToken
              _pbucUploadType
              _pbucCallback
              (Just AltJSON)
              _pbucPayload
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleBatchUpdateContactsResource)
                      mempty
