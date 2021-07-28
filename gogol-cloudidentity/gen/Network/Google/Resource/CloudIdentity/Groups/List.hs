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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the \`Group\` resources under a customer or namespace.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.list@.
module Network.Google.Resource.CloudIdentity.Groups.List
    (
    -- * REST Resource
      GroupsListResource

    -- * Creating a Request
    , groupsList
    , GroupsList

    -- * Request Lenses
    , gllParent
    , gllXgafv
    , gllUploadProtocol
    , gllAccessToken
    , gllUploadType
    , gllView
    , gllPageToken
    , gllPageSize
    , gllCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.list@ method which the
-- 'GroupsList' request conforms to.
type GroupsListResource =
     "v1" :>
       "groups" :>
         QueryParam "parent" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "view" GroupsListView :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListGroupsResponse

-- | Lists the \`Group\` resources under a customer or namespace.
--
-- /See:/ 'groupsList' smart constructor.
data GroupsList =
  GroupsList'
    { _gllParent :: !(Maybe Text)
    , _gllXgafv :: !(Maybe Xgafv)
    , _gllUploadProtocol :: !(Maybe Text)
    , _gllAccessToken :: !(Maybe Text)
    , _gllUploadType :: !(Maybe Text)
    , _gllView :: !(Maybe GroupsListView)
    , _gllPageToken :: !(Maybe Text)
    , _gllPageSize :: !(Maybe (Textual Int32))
    , _gllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gllParent'
--
-- * 'gllXgafv'
--
-- * 'gllUploadProtocol'
--
-- * 'gllAccessToken'
--
-- * 'gllUploadType'
--
-- * 'gllView'
--
-- * 'gllPageToken'
--
-- * 'gllPageSize'
--
-- * 'gllCallback'
groupsList
    :: GroupsList
groupsList =
  GroupsList'
    { _gllParent = Nothing
    , _gllXgafv = Nothing
    , _gllUploadProtocol = Nothing
    , _gllAccessToken = Nothing
    , _gllUploadType = Nothing
    , _gllView = Nothing
    , _gllPageToken = Nothing
    , _gllPageSize = Nothing
    , _gllCallback = Nothing
    }


-- | Required. The parent resource under which to list all \`Group\`
-- resources. Must be of the form \`identitysources\/{identity_source_id}\`
-- for external- identity-mapped groups or \`customers\/{customer_id}\` for
-- Google Groups. The \`customer_id\` must begin with \"C\" (for example,
-- \'C046psxkn\').
gllParent :: Lens' GroupsList (Maybe Text)
gllParent
  = lens _gllParent (\ s a -> s{_gllParent = a})

-- | V1 error format.
gllXgafv :: Lens' GroupsList (Maybe Xgafv)
gllXgafv = lens _gllXgafv (\ s a -> s{_gllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gllUploadProtocol :: Lens' GroupsList (Maybe Text)
gllUploadProtocol
  = lens _gllUploadProtocol
      (\ s a -> s{_gllUploadProtocol = a})

-- | OAuth access token.
gllAccessToken :: Lens' GroupsList (Maybe Text)
gllAccessToken
  = lens _gllAccessToken
      (\ s a -> s{_gllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gllUploadType :: Lens' GroupsList (Maybe Text)
gllUploadType
  = lens _gllUploadType
      (\ s a -> s{_gllUploadType = a})

-- | The level of detail to be returned. If unspecified, defaults to
-- \`View.BASIC\`.
gllView :: Lens' GroupsList (Maybe GroupsListView)
gllView = lens _gllView (\ s a -> s{_gllView = a})

-- | The \`next_page_token\` value returned from a previous list request, if
-- any.
gllPageToken :: Lens' GroupsList (Maybe Text)
gllPageToken
  = lens _gllPageToken (\ s a -> s{_gllPageToken = a})

-- | The maximum number of results to return. Note that the number of results
-- returned may be less than this value even if there are more available
-- results. To fetch all results, clients must continue calling this method
-- repeatedly until the response no longer contains a \`next_page_token\`.
-- If unspecified, defaults to 200 for \`View.BASIC\` and to 50 for
-- \`View.FULL\`. Must not be greater than 1000 for \`View.BASIC\` or 500
-- for \`View.FULL\`.
gllPageSize :: Lens' GroupsList (Maybe Int32)
gllPageSize
  = lens _gllPageSize (\ s a -> s{_gllPageSize = a}) .
      mapping _Coerce

-- | JSONP
gllCallback :: Lens' GroupsList (Maybe Text)
gllCallback
  = lens _gllCallback (\ s a -> s{_gllCallback = a})

instance GoogleRequest GroupsList where
        type Rs GroupsList = ListGroupsResponse
        type Scopes GroupsList =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient GroupsList'{..}
          = go _gllParent _gllXgafv _gllUploadProtocol
              _gllAccessToken
              _gllUploadType
              _gllView
              _gllPageToken
              _gllPageSize
              _gllCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient (Proxy :: Proxy GroupsListResource)
                      mempty
