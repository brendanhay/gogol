{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Table.ImportTable
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Imports a new table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTableImportTable@.
module Network.Google.Resource.FusionTables.Table.ImportTable
    (
    -- * REST Resource
      TableImportTableResource

    -- * Creating a Request
    , tableImportTable'
    , TableImportTable'

    -- * Request Lenses
    , titQuotaUser
    , titPrettyPrint
    , titUserIP
    , titMedia
    , titKey
    , titName
    , titOAuthToken
    , titDelimiter
    , titEncoding
    , titFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableImportTable@ which the
-- 'TableImportTable'' request conforms to.
type TableImportTableResource =
     "tables" :>
       "import" :>
         QueryParam "name" Text :>
           QueryParam "delimiter" Text :>
             QueryParam "encoding" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Table

-- | Imports a new table.
--
-- /See:/ 'tableImportTable'' smart constructor.
data TableImportTable' = TableImportTable'
    { _titQuotaUser   :: !(Maybe Text)
    , _titPrettyPrint :: !Bool
    , _titUserIP      :: !(Maybe Text)
    , _titMedia       :: !Body
    , _titKey         :: !(Maybe Key)
    , _titName        :: !Text
    , _titOAuthToken  :: !(Maybe OAuthToken)
    , _titDelimiter   :: !(Maybe Text)
    , _titEncoding    :: !(Maybe Text)
    , _titFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableImportTable'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'titQuotaUser'
--
-- * 'titPrettyPrint'
--
-- * 'titUserIP'
--
-- * 'titMedia'
--
-- * 'titKey'
--
-- * 'titName'
--
-- * 'titOAuthToken'
--
-- * 'titDelimiter'
--
-- * 'titEncoding'
--
-- * 'titFields'
tableImportTable'
    :: Body -- ^ 'media'
    -> Text -- ^ 'name'
    -> TableImportTable'
tableImportTable' pTitMedia_ pTitName_ =
    TableImportTable'
    { _titQuotaUser = Nothing
    , _titPrettyPrint = True
    , _titUserIP = Nothing
    , _titMedia = pTitMedia_
    , _titKey = Nothing
    , _titName = pTitName_
    , _titOAuthToken = Nothing
    , _titDelimiter = Nothing
    , _titEncoding = Nothing
    , _titFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
titQuotaUser :: Lens' TableImportTable' (Maybe Text)
titQuotaUser
  = lens _titQuotaUser (\ s a -> s{_titQuotaUser = a})

-- | Returns response with indentations and line breaks.
titPrettyPrint :: Lens' TableImportTable' Bool
titPrettyPrint
  = lens _titPrettyPrint
      (\ s a -> s{_titPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
titUserIP :: Lens' TableImportTable' (Maybe Text)
titUserIP
  = lens _titUserIP (\ s a -> s{_titUserIP = a})

titMedia :: Lens' TableImportTable' Body
titMedia = lens _titMedia (\ s a -> s{_titMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
titKey :: Lens' TableImportTable' (Maybe Key)
titKey = lens _titKey (\ s a -> s{_titKey = a})

-- | The name to be assigned to the new table.
titName :: Lens' TableImportTable' Text
titName = lens _titName (\ s a -> s{_titName = a})

-- | OAuth 2.0 token for the current user.
titOAuthToken :: Lens' TableImportTable' (Maybe OAuthToken)
titOAuthToken
  = lens _titOAuthToken
      (\ s a -> s{_titOAuthToken = a})

-- | The delimiter used to separate cell values. This can only consist of a
-- single character. Default is ,.
titDelimiter :: Lens' TableImportTable' (Maybe Text)
titDelimiter
  = lens _titDelimiter (\ s a -> s{_titDelimiter = a})

-- | The encoding of the content. Default is UTF-8. Use auto-detect if you
-- are unsure of the encoding.
titEncoding :: Lens' TableImportTable' (Maybe Text)
titEncoding
  = lens _titEncoding (\ s a -> s{_titEncoding = a})

-- | Selector specifying which fields to include in a partial response.
titFields :: Lens' TableImportTable' (Maybe Text)
titFields
  = lens _titFields (\ s a -> s{_titFields = a})

instance GoogleAuth TableImportTable' where
        authKey = titKey . _Just
        authToken = titOAuthToken . _Just

instance GoogleRequest TableImportTable' where
        type Rs TableImportTable' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableImportTable'{..}
          = go (Just _titName) _titDelimiter _titEncoding
              _titQuotaUser
              (Just _titPrettyPrint)
              _titUserIP
              _titFields
              _titKey
              _titOAuthToken
              (Just AltJSON)
              _titMedia
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TableImportTableResource)
                      r
                      u
