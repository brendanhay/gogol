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
-- Module      : Network.Google.Resource.FusionTables.Column.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a new column to the table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesColumnInsert@.
module Network.Google.Resource.FusionTables.Column.Insert
    (
    -- * REST Resource
      ColumnInsertResource

    -- * Creating a Request
    , columnInsert'
    , ColumnInsert'

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciUserIP
    , ciPayload
    , ciKey
    , ciOAuthToken
    , ciTableId
    , ciFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesColumnInsert@ which the
-- 'ColumnInsert'' request conforms to.
type ColumnInsertResource =
     "tables" :>
       Capture "tableId" Text :>
         "columns" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Column :> Post '[JSON] Column

-- | Adds a new column to the table.
--
-- /See:/ 'columnInsert'' smart constructor.
data ColumnInsert' = ColumnInsert'
    { _ciQuotaUser   :: !(Maybe Text)
    , _ciPrettyPrint :: !Bool
    , _ciUserIP      :: !(Maybe Text)
    , _ciPayload     :: !Column
    , _ciKey         :: !(Maybe Key)
    , _ciOAuthToken  :: !(Maybe OAuthToken)
    , _ciTableId     :: !Text
    , _ciFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIP'
--
-- * 'ciPayload'
--
-- * 'ciKey'
--
-- * 'ciOAuthToken'
--
-- * 'ciTableId'
--
-- * 'ciFields'
columnInsert'
    :: Column -- ^ 'payload'
    -> Text -- ^ 'tableId'
    -> ColumnInsert'
columnInsert' pCiPayload_ pCiTableId_ =
    ColumnInsert'
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIP = Nothing
    , _ciPayload = pCiPayload_
    , _ciKey = Nothing
    , _ciOAuthToken = Nothing
    , _ciTableId = pCiTableId_
    , _ciFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciQuotaUser :: Lens' ColumnInsert' (Maybe Text)
ciQuotaUser
  = lens _ciQuotaUser (\ s a -> s{_ciQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciPrettyPrint :: Lens' ColumnInsert' Bool
ciPrettyPrint
  = lens _ciPrettyPrint
      (\ s a -> s{_ciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciUserIP :: Lens' ColumnInsert' (Maybe Text)
ciUserIP = lens _ciUserIP (\ s a -> s{_ciUserIP = a})

-- | Multipart request metadata.
ciPayload :: Lens' ColumnInsert' Column
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' ColumnInsert' (Maybe Key)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | OAuth 2.0 token for the current user.
ciOAuthToken :: Lens' ColumnInsert' (Maybe OAuthToken)
ciOAuthToken
  = lens _ciOAuthToken (\ s a -> s{_ciOAuthToken = a})

-- | Table for which a new column is being added.
ciTableId :: Lens' ColumnInsert' Text
ciTableId
  = lens _ciTableId (\ s a -> s{_ciTableId = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' ColumnInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

instance GoogleAuth ColumnInsert' where
        authKey = ciKey . _Just
        authToken = ciOAuthToken . _Just

instance GoogleRequest ColumnInsert' where
        type Rs ColumnInsert' = Column
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u ColumnInsert'{..}
          = go _ciTableId _ciQuotaUser (Just _ciPrettyPrint)
              _ciUserIP
              _ciFields
              _ciKey
              _ciOAuthToken
              (Just AltJSON)
              _ciPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ColumnInsertResource)
                      r
                      u
