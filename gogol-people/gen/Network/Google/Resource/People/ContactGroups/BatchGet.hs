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
-- Module      : Network.Google.Resource.People.ContactGroups.BatchGet
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a list of contact groups owned by the authenticated user by
-- specifying a list of contact group resource names.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.contactGroups.batchGet@.
module Network.Google.Resource.People.ContactGroups.BatchGet
    (
    -- * REST Resource
      ContactGroupsBatchGetResource

    -- * Creating a Request
    , contactGroupsBatchGet
    , ContactGroupsBatchGet

    -- * Request Lenses
    , cgbgXgafv
    , cgbgMaxMembers
    , cgbgUploadProtocol
    , cgbgAccessToken
    , cgbgUploadType
    , cgbgResourceNames
    , cgbgCallback
    ) where

import           Network.Google.People.Types
import           Network.Google.Prelude

-- | A resource alias for @people.contactGroups.batchGet@ method which the
-- 'ContactGroupsBatchGet' request conforms to.
type ContactGroupsBatchGetResource =
     "v1" :>
       "contactGroups:batchGet" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "maxMembers" (Textual Int32) :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParams "resourceNames" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] BatchGetContactGroupsResponse

-- | Get a list of contact groups owned by the authenticated user by
-- specifying a list of contact group resource names.
--
-- /See:/ 'contactGroupsBatchGet' smart constructor.
data ContactGroupsBatchGet = ContactGroupsBatchGet'
    { _cgbgXgafv          :: !(Maybe Xgafv)
    , _cgbgMaxMembers     :: !(Maybe (Textual Int32))
    , _cgbgUploadProtocol :: !(Maybe Text)
    , _cgbgAccessToken    :: !(Maybe Text)
    , _cgbgUploadType     :: !(Maybe Text)
    , _cgbgResourceNames  :: !(Maybe [Text])
    , _cgbgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactGroupsBatchGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgbgXgafv'
--
-- * 'cgbgMaxMembers'
--
-- * 'cgbgUploadProtocol'
--
-- * 'cgbgAccessToken'
--
-- * 'cgbgUploadType'
--
-- * 'cgbgResourceNames'
--
-- * 'cgbgCallback'
contactGroupsBatchGet
    :: ContactGroupsBatchGet
contactGroupsBatchGet =
    ContactGroupsBatchGet'
    { _cgbgXgafv = Nothing
    , _cgbgMaxMembers = Nothing
    , _cgbgUploadProtocol = Nothing
    , _cgbgAccessToken = Nothing
    , _cgbgUploadType = Nothing
    , _cgbgResourceNames = Nothing
    , _cgbgCallback = Nothing
    }

-- | V1 error format.
cgbgXgafv :: Lens' ContactGroupsBatchGet (Maybe Xgafv)
cgbgXgafv
  = lens _cgbgXgafv (\ s a -> s{_cgbgXgafv = a})

-- | Specifies the maximum number of members to return for each group.
cgbgMaxMembers :: Lens' ContactGroupsBatchGet (Maybe Int32)
cgbgMaxMembers
  = lens _cgbgMaxMembers
      (\ s a -> s{_cgbgMaxMembers = a})
      . mapping _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgbgUploadProtocol :: Lens' ContactGroupsBatchGet (Maybe Text)
cgbgUploadProtocol
  = lens _cgbgUploadProtocol
      (\ s a -> s{_cgbgUploadProtocol = a})

-- | OAuth access token.
cgbgAccessToken :: Lens' ContactGroupsBatchGet (Maybe Text)
cgbgAccessToken
  = lens _cgbgAccessToken
      (\ s a -> s{_cgbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgbgUploadType :: Lens' ContactGroupsBatchGet (Maybe Text)
cgbgUploadType
  = lens _cgbgUploadType
      (\ s a -> s{_cgbgUploadType = a})

-- | The resource names of the contact groups to get.
cgbgResourceNames :: Lens' ContactGroupsBatchGet [Text]
cgbgResourceNames
  = lens _cgbgResourceNames
      (\ s a -> s{_cgbgResourceNames = a})
      . _Default
      . _Coerce

-- | JSONP
cgbgCallback :: Lens' ContactGroupsBatchGet (Maybe Text)
cgbgCallback
  = lens _cgbgCallback (\ s a -> s{_cgbgCallback = a})

instance GoogleRequest ContactGroupsBatchGet where
        type Rs ContactGroupsBatchGet =
             BatchGetContactGroupsResponse
        type Scopes ContactGroupsBatchGet =
             '["https://www.googleapis.com/auth/contacts",
               "https://www.googleapis.com/auth/contacts.readonly"]
        requestClient ContactGroupsBatchGet'{..}
          = go _cgbgXgafv _cgbgMaxMembers _cgbgUploadProtocol
              _cgbgAccessToken
              _cgbgUploadType
              (_cgbgResourceNames ^. _Default)
              _cgbgCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy ContactGroupsBatchGetResource)
                      mempty
