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
-- Module      : Network.Google.Resource.SQL.Instances.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists instances under a given project.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.list@.
module Network.Google.Resource.SQL.Instances.List
    (
    -- * REST Resource
      InstancesListResource

    -- * Creating a Request
    , instancesList
    , InstancesList

    -- * Request Lenses
    , ilXgafv
    , ilUploadProtocol
    , ilProject
    , ilAccessToken
    , ilUploadType
    , ilFilter
    , ilPageToken
    , ilMaxResults
    , ilCallback
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.list@ method which the
-- 'InstancesList' request conforms to.
type InstancesListResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] InstancesListResponse

-- | Lists instances under a given project.
--
-- /See:/ 'instancesList' smart constructor.
data InstancesList =
  InstancesList'
    { _ilXgafv :: !(Maybe Xgafv)
    , _ilUploadProtocol :: !(Maybe Text)
    , _ilProject :: !Text
    , _ilAccessToken :: !(Maybe Text)
    , _ilUploadType :: !(Maybe Text)
    , _ilFilter :: !(Maybe Text)
    , _ilPageToken :: !(Maybe Text)
    , _ilMaxResults :: !(Maybe (Textual Word32))
    , _ilCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilXgafv'
--
-- * 'ilUploadProtocol'
--
-- * 'ilProject'
--
-- * 'ilAccessToken'
--
-- * 'ilUploadType'
--
-- * 'ilFilter'
--
-- * 'ilPageToken'
--
-- * 'ilMaxResults'
--
-- * 'ilCallback'
instancesList
    :: Text -- ^ 'ilProject'
    -> InstancesList
instancesList pIlProject_ =
  InstancesList'
    { _ilXgafv = Nothing
    , _ilUploadProtocol = Nothing
    , _ilProject = pIlProject_
    , _ilAccessToken = Nothing
    , _ilUploadType = Nothing
    , _ilFilter = Nothing
    , _ilPageToken = Nothing
    , _ilMaxResults = Nothing
    , _ilCallback = Nothing
    }


-- | V1 error format.
ilXgafv :: Lens' InstancesList (Maybe Xgafv)
ilXgafv = lens _ilXgafv (\ s a -> s{_ilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ilUploadProtocol :: Lens' InstancesList (Maybe Text)
ilUploadProtocol
  = lens _ilUploadProtocol
      (\ s a -> s{_ilUploadProtocol = a})

-- | Project ID of the project for which to list Cloud SQL instances.
ilProject :: Lens' InstancesList Text
ilProject
  = lens _ilProject (\ s a -> s{_ilProject = a})

-- | OAuth access token.
ilAccessToken :: Lens' InstancesList (Maybe Text)
ilAccessToken
  = lens _ilAccessToken
      (\ s a -> s{_ilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ilUploadType :: Lens' InstancesList (Maybe Text)
ilUploadType
  = lens _ilUploadType (\ s a -> s{_ilUploadType = a})

-- | A filter expression that filters resources listed in the response. The
-- expression is in the form of field:value. For example,
-- \'instanceType:CLOUD_SQL_INSTANCE\'. Fields can be nested as needed as
-- per their JSON representation, such as
-- \'settings.userLabels.auto_start:true\'. Multiple filter queries are
-- space-separated. For example. \'state:RUNNABLE
-- instanceType:CLOUD_SQL_INSTANCE\'. By default, each expression is an AND
-- expression. However, you can include AND and OR expressions explicitly.
ilFilter :: Lens' InstancesList (Maybe Text)
ilFilter = lens _ilFilter (\ s a -> s{_ilFilter = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
ilPageToken :: Lens' InstancesList (Maybe Text)
ilPageToken
  = lens _ilPageToken (\ s a -> s{_ilPageToken = a})

-- | The maximum number of results to return per response.
ilMaxResults :: Lens' InstancesList (Maybe Word32)
ilMaxResults
  = lens _ilMaxResults (\ s a -> s{_ilMaxResults = a})
      . mapping _Coerce

-- | JSONP
ilCallback :: Lens' InstancesList (Maybe Text)
ilCallback
  = lens _ilCallback (\ s a -> s{_ilCallback = a})

instance GoogleRequest InstancesList where
        type Rs InstancesList = InstancesListResponse
        type Scopes InstancesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesList'{..}
          = go _ilProject _ilXgafv _ilUploadProtocol
              _ilAccessToken
              _ilUploadType
              _ilFilter
              _ilPageToken
              _ilMaxResults
              _ilCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy InstancesListResource)
                      mempty
