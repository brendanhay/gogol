{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module FusionTables.Table.ImportTable
    (
    -- * REST Resource
      TableImportTableAPI

    -- * Creating a Request
    , tableImportTable
    , TableImportTable

    -- * Request Lenses
    , titQuotaUser
    , titPrettyPrint
    , titUserIp
    , titKey
    , titName
    , titOauthToken
    , titDelimiter
    , titEncoding
    , titFields
    , titAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableImportTable@ which the
-- 'TableImportTable' request conforms to.
type TableImportTableAPI =
     "tables" :>
       "import" :>
         QueryParam "name" Text :>
           QueryParam "delimiter" Text :>
             QueryParam "encoding" Text :> Post '[JSON] Table

-- | Imports a new table.
--
-- /See:/ 'tableImportTable' smart constructor.
data TableImportTable = TableImportTable
    { _titQuotaUser   :: !(Maybe Text)
    , _titPrettyPrint :: !Bool
    , _titUserIp      :: !(Maybe Text)
    , _titKey         :: !(Maybe Text)
    , _titName        :: !Text
    , _titOauthToken  :: !(Maybe Text)
    , _titDelimiter   :: !(Maybe Text)
    , _titEncoding    :: !(Maybe Text)
    , _titFields      :: !(Maybe Text)
    , _titAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableImportTable'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'titQuotaUser'
--
-- * 'titPrettyPrint'
--
-- * 'titUserIp'
--
-- * 'titKey'
--
-- * 'titName'
--
-- * 'titOauthToken'
--
-- * 'titDelimiter'
--
-- * 'titEncoding'
--
-- * 'titFields'
--
-- * 'titAlt'
tableImportTable
    :: Text -- ^ 'name'
    -> TableImportTable
tableImportTable pTitName_ =
    TableImportTable
    { _titQuotaUser = Nothing
    , _titPrettyPrint = True
    , _titUserIp = Nothing
    , _titKey = Nothing
    , _titName = pTitName_
    , _titOauthToken = Nothing
    , _titDelimiter = Nothing
    , _titEncoding = Nothing
    , _titFields = Nothing
    , _titAlt = "json"
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
titUserIp :: Lens' TableImportTable' (Maybe Text)
titUserIp
  = lens _titUserIp (\ s a -> s{_titUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
titKey :: Lens' TableImportTable' (Maybe Text)
titKey = lens _titKey (\ s a -> s{_titKey = a})

-- | The name to be assigned to the new table.
titName :: Lens' TableImportTable' Text
titName = lens _titName (\ s a -> s{_titName = a})

-- | OAuth 2.0 token for the current user.
titOauthToken :: Lens' TableImportTable' (Maybe Text)
titOauthToken
  = lens _titOauthToken
      (\ s a -> s{_titOauthToken = a})

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

-- | Data format for the response.
titAlt :: Lens' TableImportTable' Text
titAlt = lens _titAlt (\ s a -> s{_titAlt = a})

instance GoogleRequest TableImportTable' where
        type Rs TableImportTable' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableImportTable{..}
          = go _titQuotaUser _titPrettyPrint _titUserIp _titKey
              (Just _titName)
              _titOauthToken
              _titDelimiter
              _titEncoding
              _titFields
              _titAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TableImportTableAPI)
                      r
                      u
