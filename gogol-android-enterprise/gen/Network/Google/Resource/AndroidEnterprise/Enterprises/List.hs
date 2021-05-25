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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up an enterprise by domain name. This is only supported for
-- enterprises created via the Google-initiated creation flow. Lookup of
-- the id is not needed for enterprises created via the EMM-initiated flow
-- since the EMM learns the enterprise ID in the callback specified in the
-- Enterprises.generateSignupUrl call.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.list@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.List
    (
    -- * REST Resource
      EnterprisesListResource

    -- * Creating a Request
    , enterprisesList
    , EnterprisesList

    -- * Request Lenses
    , elXgafv
    , elUploadProtocol
    , elAccessToken
    , elDomain
    , elUploadType
    , elCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.list@ method which the
-- 'EnterprisesList' request conforms to.
type EnterprisesListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           QueryParam "domain" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] EnterprisesListResponse

-- | Looks up an enterprise by domain name. This is only supported for
-- enterprises created via the Google-initiated creation flow. Lookup of
-- the id is not needed for enterprises created via the EMM-initiated flow
-- since the EMM learns the enterprise ID in the callback specified in the
-- Enterprises.generateSignupUrl call.
--
-- /See:/ 'enterprisesList' smart constructor.
data EnterprisesList =
  EnterprisesList'
    { _elXgafv :: !(Maybe Xgafv)
    , _elUploadProtocol :: !(Maybe Text)
    , _elAccessToken :: !(Maybe Text)
    , _elDomain :: !Text
    , _elUploadType :: !(Maybe Text)
    , _elCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elXgafv'
--
-- * 'elUploadProtocol'
--
-- * 'elAccessToken'
--
-- * 'elDomain'
--
-- * 'elUploadType'
--
-- * 'elCallback'
enterprisesList
    :: Text -- ^ 'elDomain'
    -> EnterprisesList
enterprisesList pElDomain_ =
  EnterprisesList'
    { _elXgafv = Nothing
    , _elUploadProtocol = Nothing
    , _elAccessToken = Nothing
    , _elDomain = pElDomain_
    , _elUploadType = Nothing
    , _elCallback = Nothing
    }


-- | V1 error format.
elXgafv :: Lens' EnterprisesList (Maybe Xgafv)
elXgafv = lens _elXgafv (\ s a -> s{_elXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
elUploadProtocol :: Lens' EnterprisesList (Maybe Text)
elUploadProtocol
  = lens _elUploadProtocol
      (\ s a -> s{_elUploadProtocol = a})

-- | OAuth access token.
elAccessToken :: Lens' EnterprisesList (Maybe Text)
elAccessToken
  = lens _elAccessToken
      (\ s a -> s{_elAccessToken = a})

-- | Required. The exact primary domain name of the enterprise to look up.
elDomain :: Lens' EnterprisesList Text
elDomain = lens _elDomain (\ s a -> s{_elDomain = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
elUploadType :: Lens' EnterprisesList (Maybe Text)
elUploadType
  = lens _elUploadType (\ s a -> s{_elUploadType = a})

-- | JSONP
elCallback :: Lens' EnterprisesList (Maybe Text)
elCallback
  = lens _elCallback (\ s a -> s{_elCallback = a})

instance GoogleRequest EnterprisesList where
        type Rs EnterprisesList = EnterprisesListResponse
        type Scopes EnterprisesList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesList'{..}
          = go (Just _elDomain) _elXgafv _elUploadProtocol
              _elAccessToken
              _elUploadType
              _elCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesListResource)
                      mempty
