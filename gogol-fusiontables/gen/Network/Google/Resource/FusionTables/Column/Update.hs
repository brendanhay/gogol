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
-- Module      : Network.Google.Resource.FusionTables.Column.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the name or type of an existing column.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesColumnUpdate@.
module Network.Google.Resource.FusionTables.Column.Update
    (
    -- * REST Resource
      ColumnUpdateResource

    -- * Creating a Request
    , columnUpdate'
    , ColumnUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuUserIP
    , cuPayload
    , cuKey
    , cuOAuthToken
    , cuTableId
    , cuColumnId
    , cuFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesColumnUpdate@ which the
-- 'ColumnUpdate'' request conforms to.
type ColumnUpdateResource =
     "tables" :>
       Capture "tableId" Text :>
         "columns" :>
           Capture "columnId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[OctetStream] Column :> Put '[JSON] Column

-- | Updates the name or type of an existing column.
--
-- /See:/ 'columnUpdate'' smart constructor.
data ColumnUpdate' = ColumnUpdate'
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuPrettyPrint :: !Bool
    , _cuUserIP      :: !(Maybe Text)
    , _cuPayload     :: !Column
    , _cuKey         :: !(Maybe Key)
    , _cuOAuthToken  :: !(Maybe OAuthToken)
    , _cuTableId     :: !Text
    , _cuColumnId    :: !Text
    , _cuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIP'
--
-- * 'cuPayload'
--
-- * 'cuKey'
--
-- * 'cuOAuthToken'
--
-- * 'cuTableId'
--
-- * 'cuColumnId'
--
-- * 'cuFields'
columnUpdate'
    :: Column -- ^ 'payload'
    -> Text -- ^ 'tableId'
    -> Text -- ^ 'columnId'
    -> ColumnUpdate'
columnUpdate' pCuPayload_ pCuTableId_ pCuColumnId_ =
    ColumnUpdate'
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuUserIP = Nothing
    , _cuPayload = pCuPayload_
    , _cuKey = Nothing
    , _cuOAuthToken = Nothing
    , _cuTableId = pCuTableId_
    , _cuColumnId = pCuColumnId_
    , _cuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' ColumnUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' ColumnUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIP :: Lens' ColumnUpdate' (Maybe Text)
cuUserIP = lens _cuUserIP (\ s a -> s{_cuUserIP = a})

-- | Multipart request metadata.
cuPayload :: Lens' ColumnUpdate' Column
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' ColumnUpdate' (Maybe Key)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | OAuth 2.0 token for the current user.
cuOAuthToken :: Lens' ColumnUpdate' (Maybe OAuthToken)
cuOAuthToken
  = lens _cuOAuthToken (\ s a -> s{_cuOAuthToken = a})

-- | Table for which the column is being updated.
cuTableId :: Lens' ColumnUpdate' Text
cuTableId
  = lens _cuTableId (\ s a -> s{_cuTableId = a})

-- | Name or identifier for the column that is being updated.
cuColumnId :: Lens' ColumnUpdate' Text
cuColumnId
  = lens _cuColumnId (\ s a -> s{_cuColumnId = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' ColumnUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

instance GoogleAuth ColumnUpdate' where
        authKey = cuKey . _Just
        authToken = cuOAuthToken . _Just

instance GoogleRequest ColumnUpdate' where
        type Rs ColumnUpdate' = Column
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u ColumnUpdate'{..}
          = go _cuTableId _cuColumnId _cuQuotaUser
              (Just _cuPrettyPrint)
              _cuUserIP
              _cuFields
              _cuKey
              _cuOAuthToken
              (Just AltJSON)
              _cuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ColumnUpdateResource)
                      r
                      u
