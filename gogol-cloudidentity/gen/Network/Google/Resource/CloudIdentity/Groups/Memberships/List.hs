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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Memberships.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Memberships within a Group.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.list@.
module Network.Google.Resource.CloudIdentity.Groups.Memberships.List
    (
    -- * REST Resource
      GroupsMembershipsListResource

    -- * Creating a Request
    , groupsMembershipsList
    , GroupsMembershipsList

    -- * Request Lenses
    , groParent
    , groXgafv
    , groUploadProtocol
    , groAccessToken
    , groUploadType
    , groView
    , groPageToken
    , groPageSize
    , groCallback
    ) where

import           Network.Google.CloudIdentity.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.memberships.list@ method which the
-- 'GroupsMembershipsList' request conforms to.
type GroupsMembershipsListResource =
     "v1" :>
       Capture "parent" Text :>
         "memberships" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "view" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListMembershipsResponse

-- | List Memberships within a Group.
--
-- /See:/ 'groupsMembershipsList' smart constructor.
data GroupsMembershipsList =
  GroupsMembershipsList'
    { _groParent         :: !Text
    , _groXgafv          :: !(Maybe Xgafv)
    , _groUploadProtocol :: !(Maybe Text)
    , _groAccessToken    :: !(Maybe Text)
    , _groUploadType     :: !(Maybe Text)
    , _groView           :: !(Maybe Text)
    , _groPageToken      :: !(Maybe Text)
    , _groPageSize       :: !(Maybe (Textual Int32))
    , _groCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsMembershipsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'groParent'
--
-- * 'groXgafv'
--
-- * 'groUploadProtocol'
--
-- * 'groAccessToken'
--
-- * 'groUploadType'
--
-- * 'groView'
--
-- * 'groPageToken'
--
-- * 'groPageSize'
--
-- * 'groCallback'
groupsMembershipsList
    :: Text -- ^ 'groParent'
    -> GroupsMembershipsList
groupsMembershipsList pGroParent_ =
  GroupsMembershipsList'
    { _groParent = pGroParent_
    , _groXgafv = Nothing
    , _groUploadProtocol = Nothing
    , _groAccessToken = Nothing
    , _groUploadType = Nothing
    , _groView = Nothing
    , _groPageToken = Nothing
    , _groPageSize = Nothing
    , _groCallback = Nothing
    }


-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Group to list Memberships within. Format: \`groups\/{group_id}\`, where
-- \`group_id\` is the unique ID assigned to the Group.
groParent :: Lens' GroupsMembershipsList Text
groParent
  = lens _groParent (\ s a -> s{_groParent = a})

-- | V1 error format.
groXgafv :: Lens' GroupsMembershipsList (Maybe Xgafv)
groXgafv = lens _groXgafv (\ s a -> s{_groXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
groUploadProtocol :: Lens' GroupsMembershipsList (Maybe Text)
groUploadProtocol
  = lens _groUploadProtocol
      (\ s a -> s{_groUploadProtocol = a})

-- | OAuth access token.
groAccessToken :: Lens' GroupsMembershipsList (Maybe Text)
groAccessToken
  = lens _groAccessToken
      (\ s a -> s{_groAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
groUploadType :: Lens' GroupsMembershipsList (Maybe Text)
groUploadType
  = lens _groUploadType
      (\ s a -> s{_groUploadType = a})

-- | Membership resource view to be returned. Defaults to View.BASIC.
groView :: Lens' GroupsMembershipsList (Maybe Text)
groView = lens _groView (\ s a -> s{_groView = a})

-- | The next_page_token value returned from a previous list request, if any.
groPageToken :: Lens' GroupsMembershipsList (Maybe Text)
groPageToken
  = lens _groPageToken (\ s a -> s{_groPageToken = a})

-- | The default page size is 200 (max 1000) for the BASIC view, and 50 (max
-- 500) for the FULL view.
groPageSize :: Lens' GroupsMembershipsList (Maybe Int32)
groPageSize
  = lens _groPageSize (\ s a -> s{_groPageSize = a}) .
      mapping _Coerce

-- | JSONP
groCallback :: Lens' GroupsMembershipsList (Maybe Text)
groCallback
  = lens _groCallback (\ s a -> s{_groCallback = a})

instance GoogleRequest GroupsMembershipsList where
        type Rs GroupsMembershipsList =
             ListMembershipsResponse
        type Scopes GroupsMembershipsList =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-identity.groups.readonly"]
        requestClient GroupsMembershipsList'{..}
          = go _groParent _groXgafv _groUploadProtocol
              _groAccessToken
              _groUploadType
              _groView
              _groPageToken
              _groPageSize
              _groCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupsMembershipsListResource)
                      mempty
