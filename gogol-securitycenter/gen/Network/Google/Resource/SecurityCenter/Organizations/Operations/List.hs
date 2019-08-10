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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Operations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding allows API services to override the binding to use
-- different resource name schemes, such as \`users\/*\/operations\`. To
-- override the binding, API services can add a binding such as
-- \`\"\/v1\/{name=users\/*}\/operations\"\` to their service
-- configuration. For backwards compatibility, the default name includes
-- the operations collection id, however overriding users must ensure the
-- name binding is the parent resource, without the operations collection
-- id.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Cloud Security Command Center API Reference> for @securitycenter.organizations.operations.list@.
module Network.Google.Resource.SecurityCenter.Organizations.Operations.List
    (
    -- * REST Resource
      OrganizationsOperationsListResource

    -- * Creating a Request
    , organizationsOperationsList
    , OrganizationsOperationsList

    -- * Request Lenses
    , oolXgafv
    , oolUploadProtocol
    , oolAccessToken
    , oolUploadType
    , oolName
    , oolFilter
    , oolPageToken
    , oolPageSize
    , oolCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.operations.list@ method which the
-- 'OrganizationsOperationsList' request conforms to.
type OrganizationsOperationsListResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding allows API services to override the binding to use
-- different resource name schemes, such as \`users\/*\/operations\`. To
-- override the binding, API services can add a binding such as
-- \`\"\/v1\/{name=users\/*}\/operations\"\` to their service
-- configuration. For backwards compatibility, the default name includes
-- the operations collection id, however overriding users must ensure the
-- name binding is the parent resource, without the operations collection
-- id.
--
-- /See:/ 'organizationsOperationsList' smart constructor.
data OrganizationsOperationsList =
  OrganizationsOperationsList'
    { _oolXgafv          :: !(Maybe Xgafv)
    , _oolUploadProtocol :: !(Maybe Text)
    , _oolAccessToken    :: !(Maybe Text)
    , _oolUploadType     :: !(Maybe Text)
    , _oolName           :: !Text
    , _oolFilter         :: !(Maybe Text)
    , _oolPageToken      :: !(Maybe Text)
    , _oolPageSize       :: !(Maybe (Textual Int32))
    , _oolCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oolXgafv'
--
-- * 'oolUploadProtocol'
--
-- * 'oolAccessToken'
--
-- * 'oolUploadType'
--
-- * 'oolName'
--
-- * 'oolFilter'
--
-- * 'oolPageToken'
--
-- * 'oolPageSize'
--
-- * 'oolCallback'
organizationsOperationsList
    :: Text -- ^ 'oolName'
    -> OrganizationsOperationsList
organizationsOperationsList pOolName_ =
  OrganizationsOperationsList'
    { _oolXgafv = Nothing
    , _oolUploadProtocol = Nothing
    , _oolAccessToken = Nothing
    , _oolUploadType = Nothing
    , _oolName = pOolName_
    , _oolFilter = Nothing
    , _oolPageToken = Nothing
    , _oolPageSize = Nothing
    , _oolCallback = Nothing
    }


-- | V1 error format.
oolXgafv :: Lens' OrganizationsOperationsList (Maybe Xgafv)
oolXgafv = lens _oolXgafv (\ s a -> s{_oolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oolUploadProtocol :: Lens' OrganizationsOperationsList (Maybe Text)
oolUploadProtocol
  = lens _oolUploadProtocol
      (\ s a -> s{_oolUploadProtocol = a})

-- | OAuth access token.
oolAccessToken :: Lens' OrganizationsOperationsList (Maybe Text)
oolAccessToken
  = lens _oolAccessToken
      (\ s a -> s{_oolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oolUploadType :: Lens' OrganizationsOperationsList (Maybe Text)
oolUploadType
  = lens _oolUploadType
      (\ s a -> s{_oolUploadType = a})

-- | The name of the operation\'s parent resource.
oolName :: Lens' OrganizationsOperationsList Text
oolName = lens _oolName (\ s a -> s{_oolName = a})

-- | The standard list filter.
oolFilter :: Lens' OrganizationsOperationsList (Maybe Text)
oolFilter
  = lens _oolFilter (\ s a -> s{_oolFilter = a})

-- | The standard list page token.
oolPageToken :: Lens' OrganizationsOperationsList (Maybe Text)
oolPageToken
  = lens _oolPageToken (\ s a -> s{_oolPageToken = a})

-- | The standard list page size.
oolPageSize :: Lens' OrganizationsOperationsList (Maybe Int32)
oolPageSize
  = lens _oolPageSize (\ s a -> s{_oolPageSize = a}) .
      mapping _Coerce

-- | JSONP
oolCallback :: Lens' OrganizationsOperationsList (Maybe Text)
oolCallback
  = lens _oolCallback (\ s a -> s{_oolCallback = a})

instance GoogleRequest OrganizationsOperationsList
         where
        type Rs OrganizationsOperationsList =
             ListOperationsResponse
        type Scopes OrganizationsOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsOperationsList'{..}
          = go _oolName _oolXgafv _oolUploadProtocol
              _oolAccessToken
              _oolUploadType
              _oolFilter
              _oolPageToken
              _oolPageSize
              _oolCallback
              (Just AltJSON)
              securityCenterService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsOperationsListResource)
                      mempty
