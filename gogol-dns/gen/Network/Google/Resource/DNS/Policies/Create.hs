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
-- Module      : Network.Google.Resource.DNS.Policies.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new Policy
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.policies.create@.
module Network.Google.Resource.DNS.Policies.Create
    (
    -- * REST Resource
      PoliciesCreateResource

    -- * Creating a Request
    , policiesCreate
    , PoliciesCreate

    -- * Request Lenses
    , pcXgafv
    , pcUploadProtocol
    , pcProject
    , pcAccessToken
    , pcUploadType
    , pcPayload
    , pcClientOperationId
    , pcCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.policies.create@ method which the
-- 'PoliciesCreate' request conforms to.
type PoliciesCreateResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "policies" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "clientOperationId" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Policy :> Post '[JSON] Policy

-- | Create a new Policy
--
-- /See:/ 'policiesCreate' smart constructor.
data PoliciesCreate =
  PoliciesCreate'
    { _pcXgafv :: !(Maybe Xgafv)
    , _pcUploadProtocol :: !(Maybe Text)
    , _pcProject :: !Text
    , _pcAccessToken :: !(Maybe Text)
    , _pcUploadType :: !(Maybe Text)
    , _pcPayload :: !Policy
    , _pcClientOperationId :: !(Maybe Text)
    , _pcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoliciesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcXgafv'
--
-- * 'pcUploadProtocol'
--
-- * 'pcProject'
--
-- * 'pcAccessToken'
--
-- * 'pcUploadType'
--
-- * 'pcPayload'
--
-- * 'pcClientOperationId'
--
-- * 'pcCallback'
policiesCreate
    :: Text -- ^ 'pcProject'
    -> Policy -- ^ 'pcPayload'
    -> PoliciesCreate
policiesCreate pPcProject_ pPcPayload_ =
  PoliciesCreate'
    { _pcXgafv = Nothing
    , _pcUploadProtocol = Nothing
    , _pcProject = pPcProject_
    , _pcAccessToken = Nothing
    , _pcUploadType = Nothing
    , _pcPayload = pPcPayload_
    , _pcClientOperationId = Nothing
    , _pcCallback = Nothing
    }


-- | V1 error format.
pcXgafv :: Lens' PoliciesCreate (Maybe Xgafv)
pcXgafv = lens _pcXgafv (\ s a -> s{_pcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcUploadProtocol :: Lens' PoliciesCreate (Maybe Text)
pcUploadProtocol
  = lens _pcUploadProtocol
      (\ s a -> s{_pcUploadProtocol = a})

-- | Identifies the project addressed by this request.
pcProject :: Lens' PoliciesCreate Text
pcProject
  = lens _pcProject (\ s a -> s{_pcProject = a})

-- | OAuth access token.
pcAccessToken :: Lens' PoliciesCreate (Maybe Text)
pcAccessToken
  = lens _pcAccessToken
      (\ s a -> s{_pcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcUploadType :: Lens' PoliciesCreate (Maybe Text)
pcUploadType
  = lens _pcUploadType (\ s a -> s{_pcUploadType = a})

-- | Multipart request metadata.
pcPayload :: Lens' PoliciesCreate Policy
pcPayload
  = lens _pcPayload (\ s a -> s{_pcPayload = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
pcClientOperationId :: Lens' PoliciesCreate (Maybe Text)
pcClientOperationId
  = lens _pcClientOperationId
      (\ s a -> s{_pcClientOperationId = a})

-- | JSONP
pcCallback :: Lens' PoliciesCreate (Maybe Text)
pcCallback
  = lens _pcCallback (\ s a -> s{_pcCallback = a})

instance GoogleRequest PoliciesCreate where
        type Rs PoliciesCreate = Policy
        type Scopes PoliciesCreate = '[]
        requestClient PoliciesCreate'{..}
          = go _pcProject _pcXgafv _pcUploadProtocol
              _pcAccessToken
              _pcUploadType
              _pcClientOperationId
              _pcCallback
              (Just AltJSON)
              _pcPayload
              dNSService
          where go
                  = buildClient (Proxy :: Proxy PoliciesCreateResource)
                      mempty
