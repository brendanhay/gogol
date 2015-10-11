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
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.Avails.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List Avails owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @PlaymoviesPartnerAccountsAvailsList@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.Avails.List
    (
    -- * REST Resource
      AccountsAvailsListResource

    -- * Creating a Request
    , accountsAvailsList'
    , AccountsAvailsList'

    -- * Request Lenses
    , aalAltId
    , aalPphNames
    , aalXgafv
    , aalStudioNames
    , aalQuotaUser
    , aalVideoIds
    , aalPrettyPrint
    , aalUploadProtocol
    , aalPp
    , aalAccessToken
    , aalUploadType
    , aalTerritories
    , aalAccountId
    , aalBearerToken
    , aalKey
    , aalPageToken
    , aalTitle
    , aalOAuthToken
    , aalPageSize
    , aalFields
    , aalCallback
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @PlaymoviesPartnerAccountsAvailsList@ method which the
-- 'AccountsAvailsList'' request conforms to.
type AccountsAvailsListResource =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "avails" :>
             QueryParam "altId" Text :>
               QueryParams "pphNames" Text :>
                 QueryParam "$.xgafv" Text :>
                   QueryParams "studioNames" Text :>
                     QueryParams "videoIds" Text :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParams "territories" Text :>
                                 QueryParam "bearer_token" Text :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "title" Text :>
                                       QueryParam "pageSize" Int32 :>
                                         QueryParam "callback" Text :>
                                           QueryParam "quotaUser" Text :>
                                             QueryParam "prettyPrint" Bool :>
                                               QueryParam "fields" Text :>
                                                 QueryParam "key" AuthKey :>
                                                   Header "Authorization"
                                                     OAuthToken
                                                     :>
                                                     QueryParam "alt" AltJSON :>
                                                       Get '[JSON]
                                                         ListAvailsResponse

-- | List Avails owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ 'accountsAvailsList'' smart constructor.
data AccountsAvailsList' = AccountsAvailsList'
    { _aalAltId          :: !(Maybe Text)
    , _aalPphNames       :: !(Maybe [Text])
    , _aalXgafv          :: !(Maybe Text)
    , _aalStudioNames    :: !(Maybe [Text])
    , _aalQuotaUser      :: !(Maybe Text)
    , _aalVideoIds       :: !(Maybe [Text])
    , _aalPrettyPrint    :: !Bool
    , _aalUploadProtocol :: !(Maybe Text)
    , _aalPp             :: !Bool
    , _aalAccessToken    :: !(Maybe Text)
    , _aalUploadType     :: !(Maybe Text)
    , _aalTerritories    :: !(Maybe [Text])
    , _aalAccountId      :: !Text
    , _aalBearerToken    :: !(Maybe Text)
    , _aalKey            :: !(Maybe AuthKey)
    , _aalPageToken      :: !(Maybe Text)
    , _aalTitle          :: !(Maybe Text)
    , _aalOAuthToken     :: !(Maybe OAuthToken)
    , _aalPageSize       :: !(Maybe Int32)
    , _aalFields         :: !(Maybe Text)
    , _aalCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAvailsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalAltId'
--
-- * 'aalPphNames'
--
-- * 'aalXgafv'
--
-- * 'aalStudioNames'
--
-- * 'aalQuotaUser'
--
-- * 'aalVideoIds'
--
-- * 'aalPrettyPrint'
--
-- * 'aalUploadProtocol'
--
-- * 'aalPp'
--
-- * 'aalAccessToken'
--
-- * 'aalUploadType'
--
-- * 'aalTerritories'
--
-- * 'aalAccountId'
--
-- * 'aalBearerToken'
--
-- * 'aalKey'
--
-- * 'aalPageToken'
--
-- * 'aalTitle'
--
-- * 'aalOAuthToken'
--
-- * 'aalPageSize'
--
-- * 'aalFields'
--
-- * 'aalCallback'
accountsAvailsList'
    :: Text -- ^ 'accountId'
    -> AccountsAvailsList'
accountsAvailsList' pAalAccountId_ =
    AccountsAvailsList'
    { _aalAltId = Nothing
    , _aalPphNames = Nothing
    , _aalXgafv = Nothing
    , _aalStudioNames = Nothing
    , _aalQuotaUser = Nothing
    , _aalVideoIds = Nothing
    , _aalPrettyPrint = True
    , _aalUploadProtocol = Nothing
    , _aalPp = True
    , _aalAccessToken = Nothing
    , _aalUploadType = Nothing
    , _aalTerritories = Nothing
    , _aalAccountId = pAalAccountId_
    , _aalBearerToken = Nothing
    , _aalKey = Nothing
    , _aalPageToken = Nothing
    , _aalTitle = Nothing
    , _aalOAuthToken = Nothing
    , _aalPageSize = Nothing
    , _aalFields = Nothing
    , _aalCallback = Nothing
    }

-- | Filter Avails that match a case-insensitive, partner-specific custom id.
aalAltId :: Lens' AccountsAvailsList' (Maybe Text)
aalAltId = lens _aalAltId (\ s a -> s{_aalAltId = a})

-- | See _List methods rules_ for info about this field.
aalPphNames :: Lens' AccountsAvailsList' [Text]
aalPphNames
  = lens _aalPphNames (\ s a -> s{_aalPphNames = a}) .
      _Default
      . _Coerce

-- | V1 error format.
aalXgafv :: Lens' AccountsAvailsList' (Maybe Text)
aalXgafv = lens _aalXgafv (\ s a -> s{_aalXgafv = a})

-- | See _List methods rules_ for info about this field.
aalStudioNames :: Lens' AccountsAvailsList' [Text]
aalStudioNames
  = lens _aalStudioNames
      (\ s a -> s{_aalStudioNames = a})
      . _Default
      . _Coerce

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
aalQuotaUser :: Lens' AccountsAvailsList' (Maybe Text)
aalQuotaUser
  = lens _aalQuotaUser (\ s a -> s{_aalQuotaUser = a})

-- | Filter Avails that match any of the given \`video_id\`s.
aalVideoIds :: Lens' AccountsAvailsList' [Text]
aalVideoIds
  = lens _aalVideoIds (\ s a -> s{_aalVideoIds = a}) .
      _Default
      . _Coerce

-- | Returns response with indentations and line breaks.
aalPrettyPrint :: Lens' AccountsAvailsList' Bool
aalPrettyPrint
  = lens _aalPrettyPrint
      (\ s a -> s{_aalPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aalUploadProtocol :: Lens' AccountsAvailsList' (Maybe Text)
aalUploadProtocol
  = lens _aalUploadProtocol
      (\ s a -> s{_aalUploadProtocol = a})

-- | Pretty-print response.
aalPp :: Lens' AccountsAvailsList' Bool
aalPp = lens _aalPp (\ s a -> s{_aalPp = a})

-- | OAuth access token.
aalAccessToken :: Lens' AccountsAvailsList' (Maybe Text)
aalAccessToken
  = lens _aalAccessToken
      (\ s a -> s{_aalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aalUploadType :: Lens' AccountsAvailsList' (Maybe Text)
aalUploadType
  = lens _aalUploadType
      (\ s a -> s{_aalUploadType = a})

-- | Filter Avails that match (case-insensitive) any of the given country
-- codes, using the \"ISO 3166-1 alpha-2\" format (examples: \"US\",
-- \"us\", \"Us\").
aalTerritories :: Lens' AccountsAvailsList' [Text]
aalTerritories
  = lens _aalTerritories
      (\ s a -> s{_aalTerritories = a})
      . _Default
      . _Coerce

-- | REQUIRED. See _General rules_ for more information about this field.
aalAccountId :: Lens' AccountsAvailsList' Text
aalAccountId
  = lens _aalAccountId (\ s a -> s{_aalAccountId = a})

-- | OAuth bearer token.
aalBearerToken :: Lens' AccountsAvailsList' (Maybe Text)
aalBearerToken
  = lens _aalBearerToken
      (\ s a -> s{_aalBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aalKey :: Lens' AccountsAvailsList' (Maybe AuthKey)
aalKey = lens _aalKey (\ s a -> s{_aalKey = a})

-- | See _List methods rules_ for info about this field.
aalPageToken :: Lens' AccountsAvailsList' (Maybe Text)
aalPageToken
  = lens _aalPageToken (\ s a -> s{_aalPageToken = a})

-- | Filter Avails that match a case-insensitive substring of the default
-- Title name.
aalTitle :: Lens' AccountsAvailsList' (Maybe Text)
aalTitle = lens _aalTitle (\ s a -> s{_aalTitle = a})

-- | OAuth 2.0 token for the current user.
aalOAuthToken :: Lens' AccountsAvailsList' (Maybe OAuthToken)
aalOAuthToken
  = lens _aalOAuthToken
      (\ s a -> s{_aalOAuthToken = a})

-- | See _List methods rules_ for info about this field.
aalPageSize :: Lens' AccountsAvailsList' (Maybe Int32)
aalPageSize
  = lens _aalPageSize (\ s a -> s{_aalPageSize = a})

-- | Selector specifying which fields to include in a partial response.
aalFields :: Lens' AccountsAvailsList' (Maybe Text)
aalFields
  = lens _aalFields (\ s a -> s{_aalFields = a})

-- | JSONP
aalCallback :: Lens' AccountsAvailsList' (Maybe Text)
aalCallback
  = lens _aalCallback (\ s a -> s{_aalCallback = a})

instance GoogleAuth AccountsAvailsList' where
        _AuthKey = aalKey . _Just
        _AuthToken = aalOAuthToken . _Just

instance GoogleRequest AccountsAvailsList' where
        type Rs AccountsAvailsList' = ListAvailsResponse
        request = requestWith playMoviesPartnerRequest
        requestWith rq AccountsAvailsList'{..}
          = go _aalAccountId _aalAltId
              (_aalPphNames ^. _Default)
              _aalXgafv
              (_aalStudioNames ^. _Default)
              (_aalVideoIds ^. _Default)
              _aalUploadProtocol
              (Just _aalPp)
              _aalAccessToken
              _aalUploadType
              (_aalTerritories ^. _Default)
              _aalBearerToken
              _aalPageToken
              _aalTitle
              _aalPageSize
              _aalCallback
              _aalQuotaUser
              (Just _aalPrettyPrint)
              _aalFields
              _aalKey
              _aalOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsAvailsListResource)
                      rq
