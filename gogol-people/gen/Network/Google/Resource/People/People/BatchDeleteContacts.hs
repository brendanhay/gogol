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
-- Module      : Network.Google.Resource.People.People.BatchDeleteContacts
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a batch of contacts. Any non-contact data will not be deleted.
-- Limited to 10 parallel requests per user.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.batchDeleteContacts@.
module Network.Google.Resource.People.People.BatchDeleteContacts
    (
    -- * REST Resource
      PeopleBatchDeleteContactsResource

    -- * Creating a Request
    , peopleBatchDeleteContacts
    , PeopleBatchDeleteContacts

    -- * Request Lenses
    , pbdcXgafv
    , pbdcUploadProtocol
    , pbdcAccessToken
    , pbdcUploadType
    , pbdcPayload
    , pbdcCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.people.batchDeleteContacts@ method which the
-- 'PeopleBatchDeleteContacts' request conforms to.
type PeopleBatchDeleteContactsResource =
     "v1" :>
       "people:batchDeleteContacts" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BatchDeleteContactsRequest :>
                       Post '[JSON] Empty

-- | Delete a batch of contacts. Any non-contact data will not be deleted.
-- Limited to 10 parallel requests per user.
--
-- /See:/ 'peopleBatchDeleteContacts' smart constructor.
data PeopleBatchDeleteContacts =
  PeopleBatchDeleteContacts'
    { _pbdcXgafv :: !(Maybe Xgafv)
    , _pbdcUploadProtocol :: !(Maybe Text)
    , _pbdcAccessToken :: !(Maybe Text)
    , _pbdcUploadType :: !(Maybe Text)
    , _pbdcPayload :: !BatchDeleteContactsRequest
    , _pbdcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleBatchDeleteContacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbdcXgafv'
--
-- * 'pbdcUploadProtocol'
--
-- * 'pbdcAccessToken'
--
-- * 'pbdcUploadType'
--
-- * 'pbdcPayload'
--
-- * 'pbdcCallback'
peopleBatchDeleteContacts
    :: BatchDeleteContactsRequest -- ^ 'pbdcPayload'
    -> PeopleBatchDeleteContacts
peopleBatchDeleteContacts pPbdcPayload_ =
  PeopleBatchDeleteContacts'
    { _pbdcXgafv = Nothing
    , _pbdcUploadProtocol = Nothing
    , _pbdcAccessToken = Nothing
    , _pbdcUploadType = Nothing
    , _pbdcPayload = pPbdcPayload_
    , _pbdcCallback = Nothing
    }


-- | V1 error format.
pbdcXgafv :: Lens' PeopleBatchDeleteContacts (Maybe Xgafv)
pbdcXgafv
  = lens _pbdcXgafv (\ s a -> s{_pbdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbdcUploadProtocol :: Lens' PeopleBatchDeleteContacts (Maybe Text)
pbdcUploadProtocol
  = lens _pbdcUploadProtocol
      (\ s a -> s{_pbdcUploadProtocol = a})

-- | OAuth access token.
pbdcAccessToken :: Lens' PeopleBatchDeleteContacts (Maybe Text)
pbdcAccessToken
  = lens _pbdcAccessToken
      (\ s a -> s{_pbdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbdcUploadType :: Lens' PeopleBatchDeleteContacts (Maybe Text)
pbdcUploadType
  = lens _pbdcUploadType
      (\ s a -> s{_pbdcUploadType = a})

-- | Multipart request metadata.
pbdcPayload :: Lens' PeopleBatchDeleteContacts BatchDeleteContactsRequest
pbdcPayload
  = lens _pbdcPayload (\ s a -> s{_pbdcPayload = a})

-- | JSONP
pbdcCallback :: Lens' PeopleBatchDeleteContacts (Maybe Text)
pbdcCallback
  = lens _pbdcCallback (\ s a -> s{_pbdcCallback = a})

instance GoogleRequest PeopleBatchDeleteContacts
         where
        type Rs PeopleBatchDeleteContacts = Empty
        type Scopes PeopleBatchDeleteContacts =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient PeopleBatchDeleteContacts'{..}
          = go _pbdcXgafv _pbdcUploadProtocol _pbdcAccessToken
              _pbdcUploadType
              _pbdcCallback
              (Just AltJSON)
              _pbdcPayload
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleBatchDeleteContactsResource)
                      mempty
