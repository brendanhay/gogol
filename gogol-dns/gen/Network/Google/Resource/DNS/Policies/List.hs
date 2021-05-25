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
-- Module      : Network.Google.Resource.DNS.Policies.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enumerate all Policies associated with a project.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.policies.list@.
module Network.Google.Resource.DNS.Policies.List
    (
    -- * REST Resource
      PoliciesListResource

    -- * Creating a Request
    , policiesList
    , PoliciesList

    -- * Request Lenses
    , plXgafv
    , plUploadProtocol
    , plProject
    , plAccessToken
    , plUploadType
    , plPageToken
    , plMaxResults
    , plCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.policies.list@ method which the
-- 'PoliciesList' request conforms to.
type PoliciesListResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "policies" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] PoliciesListResponse

-- | Enumerate all Policies associated with a project.
--
-- /See:/ 'policiesList' smart constructor.
data PoliciesList =
  PoliciesList'
    { _plXgafv :: !(Maybe Xgafv)
    , _plUploadProtocol :: !(Maybe Text)
    , _plProject :: !Text
    , _plAccessToken :: !(Maybe Text)
    , _plUploadType :: !(Maybe Text)
    , _plPageToken :: !(Maybe Text)
    , _plMaxResults :: !(Maybe (Textual Int32))
    , _plCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoliciesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plXgafv'
--
-- * 'plUploadProtocol'
--
-- * 'plProject'
--
-- * 'plAccessToken'
--
-- * 'plUploadType'
--
-- * 'plPageToken'
--
-- * 'plMaxResults'
--
-- * 'plCallback'
policiesList
    :: Text -- ^ 'plProject'
    -> PoliciesList
policiesList pPlProject_ =
  PoliciesList'
    { _plXgafv = Nothing
    , _plUploadProtocol = Nothing
    , _plProject = pPlProject_
    , _plAccessToken = Nothing
    , _plUploadType = Nothing
    , _plPageToken = Nothing
    , _plMaxResults = Nothing
    , _plCallback = Nothing
    }


-- | V1 error format.
plXgafv :: Lens' PoliciesList (Maybe Xgafv)
plXgafv = lens _plXgafv (\ s a -> s{_plXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plUploadProtocol :: Lens' PoliciesList (Maybe Text)
plUploadProtocol
  = lens _plUploadProtocol
      (\ s a -> s{_plUploadProtocol = a})

-- | Identifies the project addressed by this request.
plProject :: Lens' PoliciesList Text
plProject
  = lens _plProject (\ s a -> s{_plProject = a})

-- | OAuth access token.
plAccessToken :: Lens' PoliciesList (Maybe Text)
plAccessToken
  = lens _plAccessToken
      (\ s a -> s{_plAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plUploadType :: Lens' PoliciesList (Maybe Text)
plUploadType
  = lens _plUploadType (\ s a -> s{_plUploadType = a})

-- | Optional. A tag returned by a previous list request that was truncated.
-- Use this parameter to continue a previous list request.
plPageToken :: Lens' PoliciesList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | Optional. Maximum number of results to be returned. If unspecified, the
-- server will decide how many results to return.
plMaxResults :: Lens' PoliciesList (Maybe Int32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})
      . mapping _Coerce

-- | JSONP
plCallback :: Lens' PoliciesList (Maybe Text)
plCallback
  = lens _plCallback (\ s a -> s{_plCallback = a})

instance GoogleRequest PoliciesList where
        type Rs PoliciesList = PoliciesListResponse
        type Scopes PoliciesList = '[]
        requestClient PoliciesList'{..}
          = go _plProject _plXgafv _plUploadProtocol
              _plAccessToken
              _plUploadType
              _plPageToken
              _plMaxResults
              _plCallback
              (Just AltJSON)
              dNSService
          where go
                  = buildClient (Proxy :: Proxy PoliciesListResource)
                      mempty
