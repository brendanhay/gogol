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
-- Copyright   : (c) 2015 Brendan Hay
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
    , commentsInsert'
    , CommentsInsert'

    -- * Request Lenses
    , ciActivityId
    , ciPayload
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @plusDomains.comments.insert@ method which the
-- 'CommentsInsert'' request conforms to.
type CommentsInsertResource =
     "activities" :>
       Capture "activityId" Text :>
         "comments" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Comment :> Post '[JSON] Comment

-- | Create a new comment in reply to an activity.
--
-- /See:/ 'commentsInsert'' smart constructor.
data CommentsInsert' = CommentsInsert'
    { _ciActivityId :: !Text
    , _ciPayload    :: !Comment
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciActivityId'
--
-- * 'ciPayload'
commentsInsert'
    :: Text -- ^ 'ciActivityId'
    -> Comment -- ^ 'ciPayload'
    -> CommentsInsert'
commentsInsert' pCiActivityId_ pCiPayload_ =
    CommentsInsert'
    { _ciActivityId = pCiActivityId_
    , _ciPayload = pCiPayload_
    }

-- | The ID of the activity to reply to.
ciActivityId :: Lens' CommentsInsert' Text
ciActivityId
  = lens _ciActivityId (\ s a -> s{_ciActivityId = a})

-- | Multipart request metadata.
ciPayload :: Lens' CommentsInsert' Comment
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

instance GoogleRequest CommentsInsert' where
        type Rs CommentsInsert' = Comment
        requestClient CommentsInsert'{..}
          = go _ciActivityId (Just AltJSON) _ciPayload
              plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy CommentsInsertResource)
                      mempty
