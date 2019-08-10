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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for Groups.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.search@.
module Network.Google.Resource.CloudIdentity.Groups.Search
    (
    -- * REST Resource
      GroupsSearchResource

    -- * Creating a Request
    , groupsSearch
    , GroupsSearch

    -- * Request Lenses
    , gsXgafv
    , gsUploadProtocol
    , gsAccessToken
    , gsUploadType
    , gsQuery
    , gsView
    , gsPageToken
    , gsPageSize
    , gsCallback
    ) where

import           Network.Google.CloudIdentity.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.search@ method which the
-- 'GroupsSearch' request conforms to.
type GroupsSearchResource =
     "v1" :>
       "groups:search" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "query" Text :>
                   QueryParam "view" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] SearchGroupsResponse

-- | Searches for Groups.
--
-- /See:/ 'groupsSearch' smart constructor.
data GroupsSearch =
  GroupsSearch'
    { _gsXgafv          :: !(Maybe Xgafv)
    , _gsUploadProtocol :: !(Maybe Text)
    , _gsAccessToken    :: !(Maybe Text)
    , _gsUploadType     :: !(Maybe Text)
    , _gsQuery          :: !(Maybe Text)
    , _gsView           :: !(Maybe Text)
    , _gsPageToken      :: !(Maybe Text)
    , _gsPageSize       :: !(Maybe (Textual Int32))
    , _gsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsXgafv'
--
-- * 'gsUploadProtocol'
--
-- * 'gsAccessToken'
--
-- * 'gsUploadType'
--
-- * 'gsQuery'
--
-- * 'gsView'
--
-- * 'gsPageToken'
--
-- * 'gsPageSize'
--
-- * 'gsCallback'
groupsSearch
    :: GroupsSearch
groupsSearch =
  GroupsSearch'
    { _gsXgafv = Nothing
    , _gsUploadProtocol = Nothing
    , _gsAccessToken = Nothing
    , _gsUploadType = Nothing
    , _gsQuery = Nothing
    , _gsView = Nothing
    , _gsPageToken = Nothing
    , _gsPageSize = Nothing
    , _gsCallback = Nothing
    }


-- | V1 error format.
gsXgafv :: Lens' GroupsSearch (Maybe Xgafv)
gsXgafv = lens _gsXgafv (\ s a -> s{_gsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gsUploadProtocol :: Lens' GroupsSearch (Maybe Text)
gsUploadProtocol
  = lens _gsUploadProtocol
      (\ s a -> s{_gsUploadProtocol = a})

-- | OAuth access token.
gsAccessToken :: Lens' GroupsSearch (Maybe Text)
gsAccessToken
  = lens _gsAccessToken
      (\ s a -> s{_gsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gsUploadType :: Lens' GroupsSearch (Maybe Text)
gsUploadType
  = lens _gsUploadType (\ s a -> s{_gsUploadType = a})

-- | \`Required\`. Query string for performing search on groups. Users can
-- search on parent and label attributes of groups. EXACT match (\'==\') is
-- supported on parent, and CONTAINS match (\'in\') is supported on labels.
gsQuery :: Lens' GroupsSearch (Maybe Text)
gsQuery = lens _gsQuery (\ s a -> s{_gsQuery = a})

-- | Group resource view to be returned. Defaults to [View.BASIC]().
gsView :: Lens' GroupsSearch (Maybe Text)
gsView = lens _gsView (\ s a -> s{_gsView = a})

-- | The next_page_token value returned from a previous search request, if
-- any.
gsPageToken :: Lens' GroupsSearch (Maybe Text)
gsPageToken
  = lens _gsPageToken (\ s a -> s{_gsPageToken = a})

-- | The default page size is 200 (max 1000) for the BASIC view, and 50 (max
-- 500) for the FULL view.
gsPageSize :: Lens' GroupsSearch (Maybe Int32)
gsPageSize
  = lens _gsPageSize (\ s a -> s{_gsPageSize = a}) .
      mapping _Coerce

-- | JSONP
gsCallback :: Lens' GroupsSearch (Maybe Text)
gsCallback
  = lens _gsCallback (\ s a -> s{_gsCallback = a})

instance GoogleRequest GroupsSearch where
        type Rs GroupsSearch = SearchGroupsResponse
        type Scopes GroupsSearch =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-identity.groups.readonly"]
        requestClient GroupsSearch'{..}
          = go _gsXgafv _gsUploadProtocol _gsAccessToken
              _gsUploadType
              _gsQuery
              _gsView
              _gsPageToken
              _gsPageSize
              _gsCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient (Proxy :: Proxy GroupsSearchResource)
                      mempty
