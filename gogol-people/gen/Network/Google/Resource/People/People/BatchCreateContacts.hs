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
-- Module      : Network.Google.Resource.People.People.BatchCreateContacts
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a batch of new contacts and return the PersonResponses for the
-- newly created contacts. Limited to 10 parallel requests per user.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.batchCreateContacts@.
module Network.Google.Resource.People.People.BatchCreateContacts
    (
    -- * REST Resource
      PeopleBatchCreateContactsResource

    -- * Creating a Request
    , peopleBatchCreateContacts
    , PeopleBatchCreateContacts

    -- * Request Lenses
    , pbccXgafv
    , pbccUploadProtocol
    , pbccAccessToken
    , pbccUploadType
    , pbccPayload
    , pbccCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.people.batchCreateContacts@ method which the
-- 'PeopleBatchCreateContacts' request conforms to.
type PeopleBatchCreateContactsResource =
     "v1" :>
       "people:batchCreateContacts" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BatchCreateContactsRequest :>
                       Post '[JSON] BatchCreateContactsResponse

-- | Create a batch of new contacts and return the PersonResponses for the
-- newly created contacts. Limited to 10 parallel requests per user.
--
-- /See:/ 'peopleBatchCreateContacts' smart constructor.
data PeopleBatchCreateContacts =
  PeopleBatchCreateContacts'
    { _pbccXgafv :: !(Maybe Xgafv)
    , _pbccUploadProtocol :: !(Maybe Text)
    , _pbccAccessToken :: !(Maybe Text)
    , _pbccUploadType :: !(Maybe Text)
    , _pbccPayload :: !BatchCreateContactsRequest
    , _pbccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleBatchCreateContacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbccXgafv'
--
-- * 'pbccUploadProtocol'
--
-- * 'pbccAccessToken'
--
-- * 'pbccUploadType'
--
-- * 'pbccPayload'
--
-- * 'pbccCallback'
peopleBatchCreateContacts
    :: BatchCreateContactsRequest -- ^ 'pbccPayload'
    -> PeopleBatchCreateContacts
peopleBatchCreateContacts pPbccPayload_ =
  PeopleBatchCreateContacts'
    { _pbccXgafv = Nothing
    , _pbccUploadProtocol = Nothing
    , _pbccAccessToken = Nothing
    , _pbccUploadType = Nothing
    , _pbccPayload = pPbccPayload_
    , _pbccCallback = Nothing
    }


-- | V1 error format.
pbccXgafv :: Lens' PeopleBatchCreateContacts (Maybe Xgafv)
pbccXgafv
  = lens _pbccXgafv (\ s a -> s{_pbccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbccUploadProtocol :: Lens' PeopleBatchCreateContacts (Maybe Text)
pbccUploadProtocol
  = lens _pbccUploadProtocol
      (\ s a -> s{_pbccUploadProtocol = a})

-- | OAuth access token.
pbccAccessToken :: Lens' PeopleBatchCreateContacts (Maybe Text)
pbccAccessToken
  = lens _pbccAccessToken
      (\ s a -> s{_pbccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbccUploadType :: Lens' PeopleBatchCreateContacts (Maybe Text)
pbccUploadType
  = lens _pbccUploadType
      (\ s a -> s{_pbccUploadType = a})

-- | Multipart request metadata.
pbccPayload :: Lens' PeopleBatchCreateContacts BatchCreateContactsRequest
pbccPayload
  = lens _pbccPayload (\ s a -> s{_pbccPayload = a})

-- | JSONP
pbccCallback :: Lens' PeopleBatchCreateContacts (Maybe Text)
pbccCallback
  = lens _pbccCallback (\ s a -> s{_pbccCallback = a})

instance GoogleRequest PeopleBatchCreateContacts
         where
        type Rs PeopleBatchCreateContacts =
             BatchCreateContactsResponse
        type Scopes PeopleBatchCreateContacts =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient PeopleBatchCreateContacts'{..}
          = go _pbccXgafv _pbccUploadProtocol _pbccAccessToken
              _pbccUploadType
              _pbccCallback
              (Just AltJSON)
              _pbccPayload
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleBatchCreateContactsResource)
                      mempty
