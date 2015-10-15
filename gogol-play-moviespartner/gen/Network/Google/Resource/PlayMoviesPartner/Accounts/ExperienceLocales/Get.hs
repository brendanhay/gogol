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
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.ExperienceLocales.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get an ExperienceLocale given its id. See _Authentication and
-- Authorization rules_ and _Get methods rules_ for more information about
-- this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @PlaymoviesPartnerAccountsExperienceLocalesGet@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.ExperienceLocales.Get
    (
    -- * REST Resource
      AccountsExperienceLocalesGetResource

    -- * Creating a Request
    , accountsExperienceLocalesGet'
    , AccountsExperienceLocalesGet'

    -- * Request Lenses
    , aelgXgafv
    , aelgUploadProtocol
    , aelgPp
    , aelgAccessToken
    , aelgUploadType
    , aelgElId
    , aelgAccountId
    , aelgBearerToken
    , aelgCallback
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @PlaymoviesPartnerAccountsExperienceLocalesGet@ method which the
-- 'AccountsExperienceLocalesGet'' request conforms to.
type AccountsExperienceLocalesGetResource =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "experienceLocales" :>
             Capture "elId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ExperienceLocale

-- | Get an ExperienceLocale given its id. See _Authentication and
-- Authorization rules_ and _Get methods rules_ for more information about
-- this method.
--
-- /See:/ 'accountsExperienceLocalesGet'' smart constructor.
data AccountsExperienceLocalesGet' = AccountsExperienceLocalesGet'
    { _aelgXgafv          :: !(Maybe Text)
    , _aelgUploadProtocol :: !(Maybe Text)
    , _aelgPp             :: !Bool
    , _aelgAccessToken    :: !(Maybe Text)
    , _aelgUploadType     :: !(Maybe Text)
    , _aelgElId           :: !Text
    , _aelgAccountId      :: !Text
    , _aelgBearerToken    :: !(Maybe Text)
    , _aelgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsExperienceLocalesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aelgXgafv'
--
-- * 'aelgUploadProtocol'
--
-- * 'aelgPp'
--
-- * 'aelgAccessToken'
--
-- * 'aelgUploadType'
--
-- * 'aelgElId'
--
-- * 'aelgAccountId'
--
-- * 'aelgBearerToken'
--
-- * 'aelgCallback'
accountsExperienceLocalesGet'
    :: Text -- ^ 'elId'
    -> Text -- ^ 'accountId'
    -> AccountsExperienceLocalesGet'
accountsExperienceLocalesGet' pAelgElId_ pAelgAccountId_ =
    AccountsExperienceLocalesGet'
    { _aelgXgafv = Nothing
    , _aelgUploadProtocol = Nothing
    , _aelgPp = True
    , _aelgAccessToken = Nothing
    , _aelgUploadType = Nothing
    , _aelgElId = pAelgElId_
    , _aelgAccountId = pAelgAccountId_
    , _aelgBearerToken = Nothing
    , _aelgCallback = Nothing
    }

-- | V1 error format.
aelgXgafv :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgXgafv
  = lens _aelgXgafv (\ s a -> s{_aelgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aelgUploadProtocol :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgUploadProtocol
  = lens _aelgUploadProtocol
      (\ s a -> s{_aelgUploadProtocol = a})

-- | Pretty-print response.
aelgPp :: Lens' AccountsExperienceLocalesGet' Bool
aelgPp = lens _aelgPp (\ s a -> s{_aelgPp = a})

-- | OAuth access token.
aelgAccessToken :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgAccessToken
  = lens _aelgAccessToken
      (\ s a -> s{_aelgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aelgUploadType :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgUploadType
  = lens _aelgUploadType
      (\ s a -> s{_aelgUploadType = a})

-- | REQUIRED. ExperienceLocale ID, as defined by Google.
aelgElId :: Lens' AccountsExperienceLocalesGet' Text
aelgElId = lens _aelgElId (\ s a -> s{_aelgElId = a})

-- | REQUIRED. See _General rules_ for more information about this field.
aelgAccountId :: Lens' AccountsExperienceLocalesGet' Text
aelgAccountId
  = lens _aelgAccountId
      (\ s a -> s{_aelgAccountId = a})

-- | OAuth bearer token.
aelgBearerToken :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgBearerToken
  = lens _aelgBearerToken
      (\ s a -> s{_aelgBearerToken = a})

-- | JSONP
aelgCallback :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgCallback
  = lens _aelgCallback (\ s a -> s{_aelgCallback = a})

instance GoogleRequest AccountsExperienceLocalesGet'
         where
        type Rs AccountsExperienceLocalesGet' =
             ExperienceLocale
        requestClient AccountsExperienceLocalesGet'{..}
          = go _aelgAccountId _aelgElId _aelgXgafv
              _aelgUploadProtocol
              (Just _aelgPp)
              _aelgAccessToken
              _aelgUploadType
              _aelgBearerToken
              _aelgCallback
              (Just AltJSON)
              playMoviesPartner
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsExperienceLocalesGetResource)
                      mempty
