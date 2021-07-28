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
-- Lists the \`Membership\`s within a \`Group\`.
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

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

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
                   QueryParam "view" GroupsMembershipsListView :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListMembershipsResponse

-- | Lists the \`Membership\`s within a \`Group\`.
--
-- /See:/ 'groupsMembershipsList' smart constructor.
data GroupsMembershipsList =
  GroupsMembershipsList'
    { _groParent :: !Text
    , _groXgafv :: !(Maybe Xgafv)
    , _groUploadProtocol :: !(Maybe Text)
    , _groAccessToken :: !(Maybe Text)
    , _groUploadType :: !(Maybe Text)
    , _groView :: !(Maybe GroupsMembershipsListView)
    , _groPageToken :: !(Maybe Text)
    , _groPageSize :: !(Maybe (Textual Int32))
    , _groCallback :: !(Maybe Text)
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


-- | Required. The parent \`Group\` resource under which to lookup the
-- \`Membership\` name. Must be of the form \`groups\/{group_id}\`.
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

-- | The level of detail to be returned. If unspecified, defaults to
-- \`View.BASIC\`.
groView :: Lens' GroupsMembershipsList (Maybe GroupsMembershipsListView)
groView = lens _groView (\ s a -> s{_groView = a})

-- | The \`next_page_token\` value returned from a previous search request,
-- if any.
groPageToken :: Lens' GroupsMembershipsList (Maybe Text)
groPageToken
  = lens _groPageToken (\ s a -> s{_groPageToken = a})

-- | The maximum number of results to return. Note that the number of results
-- returned may be less than this value even if there are more available
-- results. To fetch all results, clients must continue calling this method
-- repeatedly until the response no longer contains a \`next_page_token\`.
-- If unspecified, defaults to 200 for \`GroupView.BASIC\` and to 50 for
-- \`GroupView.FULL\`. Must not be greater than 1000 for
-- \`GroupView.BASIC\` or 500 for \`GroupView.FULL\`.
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
               "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
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
