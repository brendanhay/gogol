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
-- Module      : Network.Google.Resource.People.People.GetBatchGet
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about a list of specific people by specifying a
-- list of requested resource names. Use \`people\/me\` to indicate the
-- authenticated user.
-- The request throws a 400 error if \'personFields\' is not specified.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.getBatchGet@.
module Network.Google.Resource.People.People.GetBatchGet
    (
    -- * REST Resource
      PeopleGetBatchGetResource

    -- * Creating a Request
    , peopleGetBatchGet
    , PeopleGetBatchGet

    -- * Request Lenses
    , pgbgXgafv
    , pgbgUploadProtocol
    , pgbgRequestMaskIncludeField
    , pgbgAccessToken
    , pgbgUploadType
    , pgbgPersonFields
    , pgbgResourceNames
    , pgbgCallback
    ) where

import           Network.Google.People.Types
import           Network.Google.Prelude

-- | A resource alias for @people.people.getBatchGet@ method which the
-- 'PeopleGetBatchGet' request conforms to.
type PeopleGetBatchGetResource =
     "v1" :>
       "people:batchGet" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "requestMask.includeField" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "personFields" GFieldMask :>
                     QueryParams "resourceNames" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] GetPeopleResponse

-- | Provides information about a list of specific people by specifying a
-- list of requested resource names. Use \`people\/me\` to indicate the
-- authenticated user.
-- The request throws a 400 error if \'personFields\' is not specified.
--
-- /See:/ 'peopleGetBatchGet' smart constructor.
data PeopleGetBatchGet =
  PeopleGetBatchGet'
    { _pgbgXgafv                   :: !(Maybe Xgafv)
    , _pgbgUploadProtocol          :: !(Maybe Text)
    , _pgbgRequestMaskIncludeField :: !(Maybe GFieldMask)
    , _pgbgAccessToken             :: !(Maybe Text)
    , _pgbgUploadType              :: !(Maybe Text)
    , _pgbgPersonFields            :: !(Maybe GFieldMask)
    , _pgbgResourceNames           :: !(Maybe [Text])
    , _pgbgCallback                :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleGetBatchGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgbgXgafv'
--
-- * 'pgbgUploadProtocol'
--
-- * 'pgbgRequestMaskIncludeField'
--
-- * 'pgbgAccessToken'
--
-- * 'pgbgUploadType'
--
-- * 'pgbgPersonFields'
--
-- * 'pgbgResourceNames'
--
-- * 'pgbgCallback'
peopleGetBatchGet
    :: PeopleGetBatchGet
peopleGetBatchGet =
  PeopleGetBatchGet'
    { _pgbgXgafv = Nothing
    , _pgbgUploadProtocol = Nothing
    , _pgbgRequestMaskIncludeField = Nothing
    , _pgbgAccessToken = Nothing
    , _pgbgUploadType = Nothing
    , _pgbgPersonFields = Nothing
    , _pgbgResourceNames = Nothing
    , _pgbgCallback = Nothing
    }


-- | V1 error format.
pgbgXgafv :: Lens' PeopleGetBatchGet (Maybe Xgafv)
pgbgXgafv
  = lens _pgbgXgafv (\ s a -> s{_pgbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgbgUploadProtocol :: Lens' PeopleGetBatchGet (Maybe Text)
pgbgUploadProtocol
  = lens _pgbgUploadProtocol
      (\ s a -> s{_pgbgUploadProtocol = a})

-- | **Required.** Comma-separated list of person fields to be included in
-- the response. Each path should start with \`person.\`: for example,
-- \`person.names\` or \`person.photos\`.
pgbgRequestMaskIncludeField :: Lens' PeopleGetBatchGet (Maybe GFieldMask)
pgbgRequestMaskIncludeField
  = lens _pgbgRequestMaskIncludeField
      (\ s a -> s{_pgbgRequestMaskIncludeField = a})

-- | OAuth access token.
pgbgAccessToken :: Lens' PeopleGetBatchGet (Maybe Text)
pgbgAccessToken
  = lens _pgbgAccessToken
      (\ s a -> s{_pgbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgbgUploadType :: Lens' PeopleGetBatchGet (Maybe Text)
pgbgUploadType
  = lens _pgbgUploadType
      (\ s a -> s{_pgbgUploadType = a})

-- | **Required.** A field mask to restrict which fields on each person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Valid values are: * addresses * ageRanges * biographies *
-- birthdays * braggingRights * coverPhotos * emailAddresses * events *
-- genders * imClients * interests * locales * memberships * metadata *
-- names * nicknames * occupations * organizations * phoneNumbers * photos
-- * relations * relationshipInterests * relationshipStatuses * residences
-- * sipAddresses * skills * taglines * urls * userDefined
pgbgPersonFields :: Lens' PeopleGetBatchGet (Maybe GFieldMask)
pgbgPersonFields
  = lens _pgbgPersonFields
      (\ s a -> s{_pgbgPersonFields = a})

-- | The resource names of the people to provide information about. - To get
-- information about the authenticated user, specify \`people\/me\`. - To
-- get information about a google account, specify \`people\/\`account_id.
-- - To get information about a contact, specify the resource name that
-- identifies the contact as returned by
-- [\`people.connections.list\`](\/people\/api\/rest\/v1\/people.connections\/list).
-- You can include up to 50 resource names in one request.
pgbgResourceNames :: Lens' PeopleGetBatchGet [Text]
pgbgResourceNames
  = lens _pgbgResourceNames
      (\ s a -> s{_pgbgResourceNames = a})
      . _Default
      . _Coerce

-- | JSONP
pgbgCallback :: Lens' PeopleGetBatchGet (Maybe Text)
pgbgCallback
  = lens _pgbgCallback (\ s a -> s{_pgbgCallback = a})

instance GoogleRequest PeopleGetBatchGet where
        type Rs PeopleGetBatchGet = GetPeopleResponse
        type Scopes PeopleGetBatchGet =
             '["https://www.googleapis.com/auth/contacts",
               "https://www.googleapis.com/auth/contacts.readonly",
               "https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/user.addresses.read",
               "https://www.googleapis.com/auth/user.birthday.read",
               "https://www.googleapis.com/auth/user.emails.read",
               "https://www.googleapis.com/auth/user.phonenumbers.read",
               "https://www.googleapis.com/auth/userinfo.email",
               "https://www.googleapis.com/auth/userinfo.profile"]
        requestClient PeopleGetBatchGet'{..}
          = go _pgbgXgafv _pgbgUploadProtocol
              _pgbgRequestMaskIncludeField
              _pgbgAccessToken
              _pgbgUploadType
              _pgbgPersonFields
              (_pgbgResourceNames ^. _Default)
              _pgbgCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleGetBatchGetResource)
                      mempty
