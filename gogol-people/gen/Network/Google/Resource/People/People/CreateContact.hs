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
-- Module      : Network.Google.Resource.People.People.CreateContact
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new contact and return the person resource for that contact.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.createContact@.
module Network.Google.Resource.People.People.CreateContact
    (
    -- * REST Resource
      PeopleCreateContactResource

    -- * Creating a Request
    , peopleCreateContact
    , PeopleCreateContact

    -- * Request Lenses
    , pccParent
    , pccXgafv
    , pccUploadProtocol
    , pccAccessToken
    , pccUploadType
    , pccPayload
    , pccCallback
    ) where

import           Network.Google.People.Types
import           Network.Google.Prelude

-- | A resource alias for @people.people.createContact@ method which the
-- 'PeopleCreateContact' request conforms to.
type PeopleCreateContactResource =
     "v1" :>
       "people:createContact" :>
         QueryParam "parent" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Person :> Post '[JSON] Person

-- | Create a new contact and return the person resource for that contact.
--
-- /See:/ 'peopleCreateContact' smart constructor.
data PeopleCreateContact =
  PeopleCreateContact'
    { _pccParent         :: !(Maybe Text)
    , _pccXgafv          :: !(Maybe Xgafv)
    , _pccUploadProtocol :: !(Maybe Text)
    , _pccAccessToken    :: !(Maybe Text)
    , _pccUploadType     :: !(Maybe Text)
    , _pccPayload        :: !Person
    , _pccCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleCreateContact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pccParent'
--
-- * 'pccXgafv'
--
-- * 'pccUploadProtocol'
--
-- * 'pccAccessToken'
--
-- * 'pccUploadType'
--
-- * 'pccPayload'
--
-- * 'pccCallback'
peopleCreateContact
    :: Person -- ^ 'pccPayload'
    -> PeopleCreateContact
peopleCreateContact pPccPayload_ =
  PeopleCreateContact'
    { _pccParent = Nothing
    , _pccXgafv = Nothing
    , _pccUploadProtocol = Nothing
    , _pccAccessToken = Nothing
    , _pccUploadType = Nothing
    , _pccPayload = pPccPayload_
    , _pccCallback = Nothing
    }


-- | The resource name of the owning person resource.
pccParent :: Lens' PeopleCreateContact (Maybe Text)
pccParent
  = lens _pccParent (\ s a -> s{_pccParent = a})

-- | V1 error format.
pccXgafv :: Lens' PeopleCreateContact (Maybe Xgafv)
pccXgafv = lens _pccXgafv (\ s a -> s{_pccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pccUploadProtocol :: Lens' PeopleCreateContact (Maybe Text)
pccUploadProtocol
  = lens _pccUploadProtocol
      (\ s a -> s{_pccUploadProtocol = a})

-- | OAuth access token.
pccAccessToken :: Lens' PeopleCreateContact (Maybe Text)
pccAccessToken
  = lens _pccAccessToken
      (\ s a -> s{_pccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pccUploadType :: Lens' PeopleCreateContact (Maybe Text)
pccUploadType
  = lens _pccUploadType
      (\ s a -> s{_pccUploadType = a})

-- | Multipart request metadata.
pccPayload :: Lens' PeopleCreateContact Person
pccPayload
  = lens _pccPayload (\ s a -> s{_pccPayload = a})

-- | JSONP
pccCallback :: Lens' PeopleCreateContact (Maybe Text)
pccCallback
  = lens _pccCallback (\ s a -> s{_pccCallback = a})

instance GoogleRequest PeopleCreateContact where
        type Rs PeopleCreateContact = Person
        type Scopes PeopleCreateContact =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient PeopleCreateContact'{..}
          = go _pccParent _pccXgafv _pccUploadProtocol
              _pccAccessToken
              _pccUploadType
              _pccCallback
              (Just AltJSON)
              _pccPayload
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleCreateContactResource)
                      mempty
