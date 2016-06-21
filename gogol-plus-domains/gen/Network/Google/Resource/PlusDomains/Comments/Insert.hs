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
-- Module      : Network.Google.Resource.PlusDomains.Comments.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new comment in reply to an activity.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.comments.insert@.
module Network.Google.Resource.PlusDomains.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertResource

    -- * Creating a Request
    , commentsInsert
    , CommentsInsert

    -- * Request Lenses
    , cActivityId
    , cPayload
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @plusDomains.comments.insert@ method which the
-- 'CommentsInsert' request conforms to.
type CommentsInsertResource =
     "plusDomains" :>
       "v1" :>
         "activities" :>
           Capture "activityId" Text :>
             "comments" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Comment :> Post '[JSON] Comment

-- | Create a new comment in reply to an activity.
--
-- /See:/ 'commentsInsert' smart constructor.
data CommentsInsert = CommentsInsert'
    { _cActivityId :: !Text
    , _cPayload    :: !Comment
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cActivityId'
--
-- * 'cPayload'
commentsInsert
    :: Text -- ^ 'cActivityId'
    -> Comment -- ^ 'cPayload'
    -> CommentsInsert
commentsInsert pCActivityId_ pCPayload_ =
    CommentsInsert'
    { _cActivityId = pCActivityId_
    , _cPayload = pCPayload_
    }

-- | The ID of the activity to reply to.
cActivityId :: Lens' CommentsInsert Text
cActivityId
  = lens _cActivityId (\ s a -> s{_cActivityId = a})

-- | Multipart request metadata.
cPayload :: Lens' CommentsInsert Comment
cPayload = lens _cPayload (\ s a -> s{_cPayload = a})

instance GoogleRequest CommentsInsert where
        type Rs CommentsInsert = Comment
        type Scopes CommentsInsert =
             '["https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.stream.write"]
        requestClient CommentsInsert'{..}
          = go _cActivityId (Just AltJSON) _cPayload
              plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy CommentsInsertResource)
                      mempty
