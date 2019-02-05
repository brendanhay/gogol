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
-- Module      : Network.Google.Resource.People.ContactGroups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all contact groups owned by the authenticated user. Members of the
-- contact groups are not populated.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.contactGroups.list@.
module Network.Google.Resource.People.ContactGroups.List
    (
    -- * REST Resource
      ContactGroupsListResource

    -- * Creating a Request
    , contactGroupsList
    , ContactGroupsList

    -- * Request Lenses
    , cglSyncToken
    , cglXgafv
    , cglUploadProtocol
    , cglAccessToken
    , cglUploadType
    , cglPageToken
    , cglPageSize
    , cglCallback
    ) where

import           Network.Google.People.Types
import           Network.Google.Prelude

-- | A resource alias for @people.contactGroups.list@ method which the
-- 'ContactGroupsList' request conforms to.
type ContactGroupsListResource =
     "v1" :>
       "contactGroups" :>
         QueryParam "syncToken" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListContactGroupsResponse

-- | List all contact groups owned by the authenticated user. Members of the
-- contact groups are not populated.
--
-- /See:/ 'contactGroupsList' smart constructor.
data ContactGroupsList = ContactGroupsList'
    { _cglSyncToken      :: !(Maybe Text)
    , _cglXgafv          :: !(Maybe Xgafv)
    , _cglUploadProtocol :: !(Maybe Text)
    , _cglAccessToken    :: !(Maybe Text)
    , _cglUploadType     :: !(Maybe Text)
    , _cglPageToken      :: !(Maybe Text)
    , _cglPageSize       :: !(Maybe (Textual Int32))
    , _cglCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cglSyncToken'
--
-- * 'cglXgafv'
--
-- * 'cglUploadProtocol'
--
-- * 'cglAccessToken'
--
-- * 'cglUploadType'
--
-- * 'cglPageToken'
--
-- * 'cglPageSize'
--
-- * 'cglCallback'
contactGroupsList
    :: ContactGroupsList
contactGroupsList =
    ContactGroupsList'
    { _cglSyncToken = Nothing
    , _cglXgafv = Nothing
    , _cglUploadProtocol = Nothing
    , _cglAccessToken = Nothing
    , _cglUploadType = Nothing
    , _cglPageToken = Nothing
    , _cglPageSize = Nothing
    , _cglCallback = Nothing
    }

-- | A sync token, returned by a previous call to \`contactgroups.list\`.
-- Only resources changed since the sync token was created will be
-- returned.
cglSyncToken :: Lens' ContactGroupsList (Maybe Text)
cglSyncToken
  = lens _cglSyncToken (\ s a -> s{_cglSyncToken = a})

-- | V1 error format.
cglXgafv :: Lens' ContactGroupsList (Maybe Xgafv)
cglXgafv = lens _cglXgafv (\ s a -> s{_cglXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cglUploadProtocol :: Lens' ContactGroupsList (Maybe Text)
cglUploadProtocol
  = lens _cglUploadProtocol
      (\ s a -> s{_cglUploadProtocol = a})

-- | OAuth access token.
cglAccessToken :: Lens' ContactGroupsList (Maybe Text)
cglAccessToken
  = lens _cglAccessToken
      (\ s a -> s{_cglAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cglUploadType :: Lens' ContactGroupsList (Maybe Text)
cglUploadType
  = lens _cglUploadType
      (\ s a -> s{_cglUploadType = a})

-- | The next_page_token value returned from a previous call to
-- [ListContactGroups](\/people\/api\/rest\/v1\/contactgroups\/list).
-- Requests the next page of resources.
cglPageToken :: Lens' ContactGroupsList (Maybe Text)
cglPageToken
  = lens _cglPageToken (\ s a -> s{_cglPageToken = a})

-- | The maximum number of resources to return.
cglPageSize :: Lens' ContactGroupsList (Maybe Int32)
cglPageSize
  = lens _cglPageSize (\ s a -> s{_cglPageSize = a}) .
      mapping _Coerce

-- | JSONP
cglCallback :: Lens' ContactGroupsList (Maybe Text)
cglCallback
  = lens _cglCallback (\ s a -> s{_cglCallback = a})

instance GoogleRequest ContactGroupsList where
        type Rs ContactGroupsList = ListContactGroupsResponse
        type Scopes ContactGroupsList =
             '["https://www.googleapis.com/auth/contacts",
               "https://www.googleapis.com/auth/contacts.readonly"]
        requestClient ContactGroupsList'{..}
          = go _cglSyncToken _cglXgafv _cglUploadProtocol
              _cglAccessToken
              _cglUploadType
              _cglPageToken
              _cglPageSize
              _cglCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy ContactGroupsListResource)
                      mempty
